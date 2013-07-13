package controllers

import play.api._
import play.api.mvc._

import org.apache.commons.codec.binary.Base64.decodeBase64

trait Secured {
  
  def findUser(user: String, password: String) = { 
     val list = Map( "piet" -> "ppp", "jan" -> "jjj")
     
     list.find(up => (up._1 == user && up._2 == password) ).map(up => up._1)
    
  }

  private def username(request: RequestHeader): Option[String] = {
    request.headers.get("Authorization").flatMap { authorization =>
      print(authorization)
      authorization.split(" ").drop(1).headOption.flatMap { encoded =>
        new String(decodeBase64(encoded.getBytes)).split(":").toList match {
          case c :: s :: Nil => findUser(c, s)
          case _ => None
        }
      }
    }
  }

  private def onUnauthorized(request: RequestHeader) = Results.Unauthorized.withHeaders("WWW-Authenticate" -> """Basic realm="Secured"""")

  // --

  def isAuthenticated(f: => String => Request[AnyContent] => Result) = Security.Authenticated(username, onUnauthorized) { user =>
    Action(request => f(user)(request))
  }
}