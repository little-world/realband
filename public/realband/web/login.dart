import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';

class Login extends WebComponent {
  
  
  Login() {}
  
//   void login(Event event) {
// 
//      var email = query('input[name=email]').value;
//      var password = query('input[name=password]').value;
//
//      print("email: $email");
//      print("password: $password");
//
//      event.preventDefault();
//      
//      var data = {'email': email, 'password': password};
//      print(stringify(data));
//
//      var req = new HttpRequest();
//      req.open('post', 'http://localhost:9000/save', false);
//      req.send(stringify(data));
//      
//      req.on.readyStateChange.add((Event e) {
//        if (req.readyState == HttpRequest.DONE &&
//            (req.status == 200 || req.status == 0)) {
//          onSuccess(req); // called when the POST successfully completes
//        } else {
//          onFail(req);
//        }
//      });
//      
//      
//  }
   
//   void register() {
//     print("register student: " + student.toJson());
//     
//     var req = new HttpRequest();
//     req.open('put', "/register");
//     req.setRequestHeader('Content-type', 'application/json');
//     req.send(student.toJson());
//     req.onLoadEnd.listen((e) {
//       if (req.status == 200) {
//         print('result: ${req.responseText}');
//         window.location.assign("/web/out/student.html#" + req.responseText );
//       }
//     });
//     
//   }
   
  // print the raw json response text from the server
  onSuccess(HttpRequest req) {
     print(req.responseText); // print the received raw JSON text
  }
  
  onFail(HttpRequest req) {
     print(req.responseText); // print the received raw JSON text
  }
   
}

