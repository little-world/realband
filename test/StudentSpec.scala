package test

import models._
import org.specs2.mutable._
import play.api.db._
import play.api.Play.current
import play.api.test._
import play.api.test.Helpers._
import slick.session.Session
import scala.slick.driver.MySQLDriver.simple._

class StudentSpec extends Specification {

  val student = Student(None, "naam", "email", "password", "woonplaats", "telefoon", "url", "opleiding")

  "Student model" should {
    "be inserted and deleted" in {

      running(FakeApplication()) {
          val database = Database.forDataSource(DB.getDataSource())
 
        database withSession {
          implicit session: Session =>

            Students.ddl.create
            Instruments.ddl.create
            val stdId = Students.autoInc.insert(student)
            val b = for (b <- Students) yield b

            b.first.id.get shouldEqual 1
            stdId must be greaterThan (0)
            b.list.length must be greaterThan (0)

            Students.ddl.drop
            Instruments.ddl.drop

        }
      }
    }
  }

  "Student controller" should {

    "be inserted" in {

      import play.api.libs.json._

      val json: JsValue = Json.parse("""
	      {
		  "naam":"naam1",
	      "email":"em@ai.l",
	      "password":"password",
	      "woonplaats":"woonplaats",
	      "telefoon":"telefoon",
	      "url":"naam1",
	      "opleiding":"opleiding",
	      "instrument":["gitaar","drum"]
	      } 
		""")

      running(FakeApplication()) {
          val database = Database.forDataSource(DB.getDataSource())
 
        database withSession {
          implicit session: Session =>

            Students.ddl.create
            Instruments.ddl.create
            route(FakeRequest(PUT, "/register").withJsonBody(json)) match {
              case Some(home) => {
                status(home) must equalTo(OK)
                contentType(home) must beSome.which(_ == "application/json")
                contentAsString(home).toInt mustEqual 1
              }
              case None => failure("request /register")
            }
            Students.ddl.drop
            Instruments.ddl.drop
        }
      }
    }
  }
}
