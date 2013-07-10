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

object ZoekController extends Controller {
  lazy val database = Database.forDataSource(DB.getDataSource())

  implicit val StudentRead = Json.reads[Student]
  implicit val StudentWrite = Json.writes[StudentSimple]
  implicit val InstrumentWrite = Json.writes[Instrument]

  def findWoonplaatsen = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          std <- Students
        } yield (
            std.woonplaats
        )
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a.toSet))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }
  
  def findWoonplaats(plaats: String) = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          std <- Students if (std.woonplaats is plaats)
        } yield (
            std.id
        )
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }
  
   def findInstrumenten = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          inst <- Instruments
        } yield (
            inst.instrument
        )
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a.toSet))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }
  
 def findByInstrument(instrument: String) = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          inst <- Instruments if (inst.instrument is instrument)
        } yield (
            inst.studentId
        )
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  } 
 
   def findOpleidingen = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          std <- Students
        } yield (
            std.opleiding
        )
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a.toSet))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }
  
 def findByOpleiding(opleiding: String) = Action {
    database withSession {
      implicit session: Session =>
        val q = for {
          std <- Students if (std.opleiding is opleiding)
        } yield (
            std.id
        )
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  } 
 
}  