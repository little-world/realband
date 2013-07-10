library registratie_test;

import 'package:web_ui/web_ui.dart';
import 'dart:async';
import 'dart:html';
import 'dart:json';
import 'package:unittest/unittest.dart';
import 'dart:mirrors';

import '../web/registratie.dart';

main() {
  useShadowDom = true;
  Timer.run(() {
    group("student", () {
      test("to json", () {
        var student = new Student();
        InstanceMirror cm = reflect(student);
        cm.type.variables.forEach((s, VariableMirror m) {
          if(MirrorSystem.getName(s) != 'instrument')
            cm.setField(s, 'test');         
        
        });
        
        Map std = parse(student.toJson());
        std.forEach((k, v) {
          if (k != 'instrument') {
            print(k);
            expect(v, equals('test'));
          }
        });
        expect(cm.type.variables.length, equals(8));        
  
        
       var stdJson = new Student.fromJson(stringify(std));
       InstanceMirror cm2 = reflect(student);
       cm2.type.variables.forEach((s, VariableMirror m) {
         if(MirrorSystem.getName(s) != 'instrument') {
           print(cm2.getField(s).reflectee);
           expect(cm2.getField(s).reflectee, equals('test'));         
         }
          
         
       });
        
      });
        
      });
    });
}
