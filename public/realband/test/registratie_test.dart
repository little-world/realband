library registratie_test;

import 'package:web_ui/web_ui.dart';
import 'dart:async';
import 'dart:html';
import 'dart:json';
import 'package:unittest/unittest.dart';


main() {
  useShadowDom = true;
  Timer.run(() {
    group("registratie", () {
      group("components", () {
        test("hero-unit", () {
          var heroText = query('.hero-unit h1').text;
          expect(heroText.toString().toLowerCase(), 'realband');
          
        });
      });
    });
  });
}