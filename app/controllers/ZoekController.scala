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
          std.woonplaats)
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
          std.id)
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
          inst.instrument)
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
          inst.studentId)
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
          std.opleiding)
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
          std.id)
        Try(q.list) match {
          case Success(a) => {
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }

  def find() = Action { request => 

    val plaats  = request.getQueryString("plaats").getOrElse("%")
    val instrument = request.getQueryString("instrument").getOrElse("%")
    val opleiding = request.getQueryString("opleiding").getOrElse("%")
   
    
    val pl = if (plaats == "---") "%" else plaats
    val opl = if (opleiding == "---") "%" else opleiding
    val instr = if (instrument == "---") "%" else instrument

    
    print(s"$pl $opl $instr \n")
    
    database withSession {
      implicit session: Session =>
        val q = for {
          //  (inst, st)  <- Instruments innerJoin Students on (_.studentId === _.id)  

         inst <- Instruments if (inst.instrument like instr )
          std <- Students if ((std.opleiding like opl) && (std.woonplaats like pl) && std.id === inst.studentId)
         } yield (
          std.id)
          
          print (q.selectStatement)
          // toSet om de dubbelen eruit te halen
        Try(q.list.toSet) match {   
           
          case Success(a) => {
            print(a)
            Ok(Json.toJson(a))
          }
          case Failure(e) => BadRequest(Json.toJson(Map("database error" -> e.getMessage())))
        }
    }
  }

}  