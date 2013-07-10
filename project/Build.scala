import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName = "realband"
  val appVersion = "1.0-SNAPSHOT"

  val appDependencies = Seq(
    jdbc,
    anorm,
    "com.typesafe.slick" %% "slick" % "1.0.1",
    "mysql" % "mysql-connector-java" % "5.1.17",
    "com.typesafe" %% "play-plugins-mailer" % "2.1.0" 
  )

  val main = play.Project(appName, appVersion, appDependencies).settings( // Add your own project settings here      
  
  testOptions in Test += Tests.Argument(TestFrameworks.Specs2, "junitxml", "console")
  
  
  )
  
  

}
