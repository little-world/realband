package controllers

import play.api._
import play.api.mvc._
import models._
import play.api.libs.json.Json
import scala.slick.driver.MySQLDriver.simple._
import play.api.db._
import play.api.Play.current
import slick.session.Session
import scala.util._
import views.html.defaultpages.badRequest
import org.codehaus.jackson.annotate.JsonValue
import play.api.libs.json.JsValue
import java.io.BufferedInputStream
import java.io.FileInputStream
import scala.slick.ast.OrderBy

object ImageController extends Controller {
  lazy val database = Database.forDataSource(DB.getDataSource())

  def saveAvatar = Action(parse.multipartFormData) { implicit request =>

  val student = request.body.dataParts.get("id").get.head.toInt

  request.body.file("avatar").map {
    case picture => saveImage(student, "avatar", picture)
  }.getOrElse(BadRequest(Json.toJson(
    Map("status" -> "error", "message" -> "geen avatar in request"))))

    
  }

  def findAvatar(studentId: String) = Action {
    database withSession {
      implicit session: Session =>
        
        val q = for { 
          img <- Images if img.studentId is studentId.toInt 
          im <- img.sortBy(_.id.desc)  // neem de laatste
        }
          yield im.blob
        Try(q.first) match {
          case Success(a) => Ok(a)
          case Failure(e) => BadRequest(("error: " + e.getMessage()).getBytes())
        }
    }
  }
  
  private def saveImage(studentId: Int, naam: String, picture: play.api.mvc.MultipartFormData.FilePart[play.api.libs.Files.TemporaryFile]): play.api.mvc.SimpleResult[play.api.libs.json.JsValue] = {
    val filename = picture.filename
    val contentType = picture.contentType
    val file = picture.ref.file;

    val bis = new BufferedInputStream(new FileInputStream(file))
    val bArray = Stream.continually(bis.read).takeWhile(-1 !=).map(_.toByte).toArray
    bis.close()

    Logger.debug("file: " + filename + " content-length: " + bArray.length)

    database withSession {
      implicit session: Session =>
        //Images.ddl.create
        Try(Images.insert(Image(None, studentId, naam, filename, bArray))) match {
          case Success(a) => {
            Ok(Json.toJson(studentId))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }

}