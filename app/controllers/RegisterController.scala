package controllers

import scala.slick.driver.MySQLDriver.simple._
import scala.slick.session.Session
import scala.util._
import models._

import play.api.Play.current
import play.api.db.DB
import play.api.libs.functional.syntax.functionalCanBuildApplicative
import play.api.libs.functional.syntax.toFunctionalBuilderOps
import play.api.libs.json.Json
import play.api.mvc._

import com.typesafe.plugin._

object RegisterController extends Controller {
  lazy val database = Database.forDataSource(DB.getDataSource())

  implicit val StudentCreate = Json.reads[StudentForRegistration]

  def register = Action {
    implicit request =>
      request.body.asJson.map {
        json =>

          json.validate[StudentForRegistration].fold(
            invalid => {
              BadRequest(Json.toJson(Map("error json" -> invalid.toString)))
            },
            user => {
              database withSession {
                implicit session: Session =>
//                                    Students.ddl.create
//                                    Instruments.ddl.create

                  //print(user)

                  def insertStudent(user: StudentForRegistration) = Try(
                    Students.autoInc.insert(Student(None, user.naam, user.email, user.password, user.woonplaats, user.telefoon, user.url, user.opleiding)))

                  def insertInstrument(id: Int, user: StudentForRegistration) = Try(
                    for (instr <- user.instrument)
                      Instruments.insert(Instrument(id, instr)))

                  (for {
                    id <- insertStudent(user)
                    res <- insertInstrument(id, user)
                  } yield id) match {
                    case Success(id) => {
                      print("ready: " + id);
                      Ok(Json.toJson(id))
                    }
                    case Failure(e) => BadRequest(Json.toJson(Map("error database" -> e.getMessage())))
                  }

              }
            })
      }.getOrElse(BadRequest(Json.toJson(
        Map("error request.body" -> "Not Json"))))

  }

  def update(id: Int) = Action {
    implicit request =>
      request.body.asJson.map {
        json =>

          json.validate[StudentForRegistration].fold(
            invalid => {
              BadRequest(Json.toJson(Map("error json" -> invalid.toString)))
            },
            std => {
              database withSession {
                implicit session: Session =>
                  //                  Students.ddl.create
                  //                  Instruments.ddl.create

                  print("in update: " + std);

                  def insertInstruments(id: Int, user: StudentForRegistration) = Try(
                    for (instr <- user.instrument)
                      Instruments.insert(Instrument(id, instr)))

                  def updateUser(id: Int, user: StudentForRegistration) = {
                    val q = for {
                      user <- Students if user.id is id
                    } yield user.naam ~ user.email ~ user.password ~ user.woonplaats ~ user.telefoon ~ user.url ~ user.opleiding <> (StudentSimple.apply _, StudentSimple.unapply _)
                    Try(
                      q.first match {
                        case s => q.update(new StudentSimple(std.naam, std.email, std.password, std.woonplaats, std.telefoon, std.url, std.opleiding))
                      })
                  }
                 Instruments.where(_.studentId === id).delete
                  (for {
                    a <- insertInstruments(id, std)
                    id <- updateUser(id, std)
                  } yield id) match {
                    case Success(a) => Ok(Json.toJson(a))
                    case Failure(e) => BadRequest(Json.toJson(Map("error database" -> e.getMessage())))
                  }
              }
            })
      }.getOrElse(BadRequest(Json.toJson(
        Map("error request.body" -> "Not Json"))))

  }

  case class EmailCheck(email: String)

  def emailCheck = Action {
    implicit request =>
      implicit val ECheck = Json.reads[EmailCheck]
      request.body.asJson.map {
        json =>
          print(json)
          json.validate[EmailCheck].fold(
            invalid => {
              BadRequest(Json.toJson(Map("error json" -> invalid.toString)))
            },
            req => {
              database withSession {
                implicit session: Session =>
                  //HtmlBlocks.ddl.create
                  print("blk: " + req)

                  val q = for {
                    std <- Students if std.email === req.email
                  } yield (
                    std.naam)
                  Try(q.firstOption) match {
                    case Success(a) if a.isEmpty => Ok(Json.toJson(Map("helpText" -> "OK")))
                    case Success(a) if a.nonEmpty => Ok(Json.toJson(Map("helpText" -> ("email bestaat al: " + a.get))))
                    case Failure(e) => BadRequest(Json.toJson(Map("error database" -> e.getMessage())))
                  }

              }
            })
      }.getOrElse(BadRequest(Json.toJson(
        Map("error request.body" -> "Not Json"))))
  }

  def sendEmail(id: Int) {
    Try {
      val mail = use[MailerPlugin].email
      mail.setSubject("mailer")
      mail.addRecipient("Peter van Rijn <peter.van.rijn@little-world.com>", "littleworld.com@gmail.com")
      mail.addFrom("Peter van Rijn <littleworld.com@gmail.com>")
      //sends html
      mail.sendHtml("<html>html</html>")
      //sends text/text
      mail.send("test 123")
      //sends both text and html
      mail.send("text", "<html>html</html>")
    } match {
      case Success(_) => print("success")
      case Failure(e) => print(e)
    }
  }
}