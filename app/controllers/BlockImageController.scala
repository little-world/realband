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

object BlockImageController extends Controller {
  lazy val database = Database.forDataSource(DB.getDataSource())

  def save = Action(parse.multipartFormData) { implicit request =>

  val student = request.body.dataParts.get("id").get.head.toInt

  request.body.file("image").map {
    case picture => saveImage(student, "imagx", picture)
  }.getOrElse(BadRequest(Json.toJson(
    Map("status" -> "error", "message" -> "geen image in request"))))

    
  }
  


  def find(id: String) = Action {
    database withSession {
      implicit session: Session =>
        
        val q = for { 
          img <- BlockImages if img.id === id.toInt 
        }
          yield img.blob
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
        //BlockImages.ddl.create
        Try(BlockImages.autoInc.insert(BlockImage(None, studentId, naam, filename, bArray))) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }

}