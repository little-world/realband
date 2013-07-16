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
import views.html.defaultpages.notFound

object StudentController extends Controller with Secured {
  lazy val database = Database.forDataSource(DB.getDataSource())

  implicit val HtmlRead = Json.reads[HtmlBlock]
  implicit val HtmlWrite = Json.writes[HtmlBlock]
  implicit val StudentRead = Json.reads[Student]
  implicit val StudentWrite = Json.writes[StudentSimple]
  implicit val InstrumentWrite = Json.writes[Instrument]

  //todo authenticatie voor alle studenten
  // dit is een fake 
  def studentPage = isAuthenticated { username => request => 
    print(username)
     Redirect("/web/out/student.html#" + 6)
    }
  
  def findStudent(id: String) = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          std <- Students if std.id is id.toInt
        } yield (
          std.naam ~ std.email ~ std.password ~ std.woonplaats ~ std.telefoon ~ std.url ~ std.opleiding
          <> (StudentSimple.apply _, StudentSimple.unapply _))
        Try(q.first) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }

  def findInstruments(id: String) = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          inst <- Instruments if inst.studentId is id.toInt
        } yield (
          inst.instrument)
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }

  def findAllStudents = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          std <- Students
        } yield (
          std.id)
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }


  def upsertContent = Action {
    implicit request =>
      request.body.asJson.map {
        json =>
          json.validate[HtmlBlock].fold(
            invalid => {
              BadRequest(Json.toJson(Map("error json" -> invalid.toString)))
            },
            req => {
              database withSession {
                implicit session: Session =>
                  //HtmlBlocks.ddl.create
                  print("blk: " + req)
                  val q = for {
                    blk <- HtmlBlocks if blk.studentId === req.studentId && blk.row === req.row && blk.col === req.col
                  } yield blk.content

                  Try(
                      q.firstOption match {
                        case Some(b) => q.update(req.content)
                        case None => HtmlBlocks.insert(HtmlBlock(req.studentId, req.website, req.content, req.row, req.col))
                      }
                      
                  ) match {
                    case Success(a) => Ok(Json.toJson(a))
                    case Failure(e) => BadRequest(Json.toJson(Map("error database" -> e.getMessage())))
                  }

              }
            })
      }.getOrElse(BadRequest(Json.toJson(
        Map("error request.body" -> "Not Json"))))
  }
  
  
  def deleteContent = Action {
    implicit request =>
      request.body.asJson.map {
        json =>
          json.validate[HtmlBlock].fold(
            invalid => {
              BadRequest(Json.toJson(Map("error json" -> invalid.toString)))
            },
            req => {
              database withSession {
                implicit session: Session =>
                  //HtmlBlocks.ddl.create
                  print("blk: " + req)
                  val q = for {
                    blk <- HtmlBlocks if blk.studentId === req.studentId && blk.row === req.row && blk.col === req.col
                  } yield blk

                  Try(
                      q.mutate(_.delete)
                  ) match {
                    case Success(a) => Ok(Json.toJson(Map("deleted" -> req)))
                    case Failure(e) => BadRequest(Json.toJson(Map("error database" -> e.getMessage())))
                  }

              }
            })
      }.getOrElse(BadRequest(Json.toJson(
        Map("error request.body" -> "Not Json"))))
  }

  def getHtml = Action {
    implicit request =>
      request.body.asJson.map {
        json =>
          json.validate[HtmlBlock].fold(
            invalid => {
              BadRequest(Json.toJson(Map("error json" -> invalid.toString)))
            },
            req => {
              database withSession {
                implicit session: Session =>
                  //HtmlBlocks.ddl.create
                  print("blk: " + req)

                  val q = for {
                    blk <- HtmlBlocks if blk.studentId === req.studentId && blk.row === req.row && blk.col === req.col
                  } yield (
                    blk.studentId ~ blk.website ~ blk.content ~ blk.row ~ blk.col <> (HtmlBlock.apply _, HtmlBlock.unapply _))
                  Try(q.list) match {
                    case Success(a) if (!a.isEmpty) => Ok(Json.toJson(a.last))
                    // when the block is empty a BadRequest is returned
                    // but this is not a BadRequest it an empty request or better a no data request
                    case Success(a) if (a.isEmpty) => Accepted(Json.toJson(Map("error" -> "no data")))
                    case Failure(e) => BadRequest(Json.toJson(Map("error database" -> e.getMessage())))
                  }

              }
            })
      }.getOrElse(BadRequest(Json.toJson(
        Map("error request.body" -> "Not Json"))))
  }
}