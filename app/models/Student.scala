package models

import scala.slick.driver.MySQLDriver.simple._
 
import java.sql.Blob
import org.joda.time.DateTime


case class StudentForRegistration (
  naam: String,
  email: String,
  password: String,
  woonplaats: String,
  telefoon: String,
  url: String = "",
  opleiding: String,
  instrument: List[String]
)

case class StudentSimple (
  naam: String,
  email: String,
  password: String,
  woonplaats: String,
  telefoon: String,
  url: String= "",
  opleiding: String
)

  
case class Student(
  id: Option[Int],
  naam: String,
  email: String,
  password: String,
  woonplaats: String,
  telefoon: String,
  url: String = "",
  opleiding: String)
  
case class Instrument (
  studentId: Int,
  instrument: String
)

case class HtmlBlock (
  studentId: Int,
  website: String,
  content: String,
  row: Int,
  col: Int
)

case class Image(
	id: Option[Int] = None, 
	studentId : Int, 
	naam: String, 
	filename: String, 
	blob: Array[Byte]
)



object Students extends Table[Student]("STUDENT") {
  def id = column[Int]("ID", O.PrimaryKey,  O.AutoInc)
  def naam = column[String]("NAAM")
  def email = column[String]("EMAIL")
  def password = column[String]("PASSWORD")
  def woonplaats = column[String]("WOONPLAATS")
  def telefoon = column[String]("TELEFOON")
  def url = column[String]("URL")
  def opleiding = column[String]("OPLEIDING")

  def * = id.? ~ naam ~ email ~ password ~ woonplaats ~ telefoon ~ url ~ opleiding <> (Student.apply _, Student.unapply _)
  def autoInc = id.? ~ naam ~ email ~ password ~ woonplaats ~ telefoon ~ url ~ opleiding <> (Student.apply _, Student.unapply _) returning id
}

object Instruments extends Table[Instrument]("INSTRUMENT") {
  def studentId = column[Int]("STUDENT_ID")
  def instrument = column[String]("INSTRUMENT")
  
  def * = studentId ~ instrument <> (Instrument.apply _, Instrument.unapply _)
}

object HtmlBlocks extends Table[HtmlBlock]("HTML_BLOCK") {
  def studentId = column[Int]("STUDENT_ID")
  def website = column[String]("WEBSITE")
  def content = column[String]("CONTENT",  O.DBType("TEXT"))
  def row = column[Int]("ROW")
  def col = column[Int]("COL")
  
  def pk = primaryKey("pk_a", studentId ~ row ~ col)
//  def fk = foreignKey("user_fk", (username, server), User)(t => (t.username, t.server))
  
 
  def * = studentId ~ website ~ content ~ row ~ col <> (HtmlBlock.apply _, HtmlBlock.unapply _)
}

object Images extends Table[Image]("IMAGE") {
  def id = column[Int]("ID", O.PrimaryKey, O.AutoInc)
  def studentId = column[Int]("STUDENT_ID")
  def naam = column[String]("NAAM")
  def filename = column[String]("FILE_NAME")
  def blob = column[Array[Byte]]("IMAGE", O.DBType("MEDIUMBLOB"))

  def * = id.? ~ studentId ~ naam ~ filename ~ blob <> (Image.apply _, Image.unapply _)
}