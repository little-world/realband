library email;

import 'dart:async';
import 'dart:html';
import 'dart:json';
import 'package:unittest/unittest.dart';

main() {
  Timer.run(() {
    group("registratie", () {
      group("email", () {
        test("check if email 'piet@go.nl' is available", () {
          var em = {'email': 'piet@go.nl'};
          var json = stringify(em);
          var req = new HttpRequest();
          req.open('put', "/email-check", async: false);
          req.setRequestHeader('Content-type', 'application/json');
          req.send(json);
          print(parse(req.responseText)['helpText']);
          expect(parse(req.responseText)['helpText'].contains("email bestaat al"), true);
        });
      });
      
      group("components", () {
        test("component", () {
          
        });
      });
    });
  });
}