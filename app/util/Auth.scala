package util

import play.api._
import play.api.mvc._

trait MyAuth {
 
  val user: String

  def ko = println("error")
  def ok = println("ok")

  object AuthAction {
    def apply(block: Request[AnyContent] => Result): Action[AnyContent] = new Action[AnyContent] {

      def parser = BodyParsers.parse.anyContent

      def apply(ctx: Request[AnyContent]): Result = {
        if (user == "piet") ok
        else ko
        block(ctx)
      }
    }
  }
}

trait AuthConfig extends MyAuth {
  val user = "pet"
}
  