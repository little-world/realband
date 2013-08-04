import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';

import 'zoek.dart';
    
class Navbar extends WebComponent {
  SelectElement woonplaatsen;
 
  void inserted() {
    HttpRequest.getString("/woonplaatsen").then(onWoonplaatsenLoaded);
    HttpRequest.getString("/instrumenten").then(onInstrumentenLoaded);
    HttpRequest.getString("/opleidingen").then(onOpleidingenLoaded);
       }

  void onWoonplaatsenLoaded(String responseText) {
    List json = parse(responseText);
    print(json);
    
    var woonplaatsen = query('select[name=woonplaats]').children;
    for (var plaats in json)
       woonplaatsen.add(new OptionElement(plaats.toString()));   
  } 
  
  
  void onInstrumentenLoaded(String responseText) {
    List json = parse(responseText);
    print(json);
    
    var list = query('select[name=instrument]').children;
    for (var inst in json)
       list.add(new OptionElement(inst.toString()));   
  } 
  
  
  void onOpleidingenLoaded(String responseText) {
    List json = parse(responseText);
    print(json);
    
    var opleidingen = query('select[name=opleiding]').children;
    for (var opl in json)
       opleidingen.add(new OptionElement(opl.toString()));   
  } 
  
  void change(Event event) {
    var selInst = query('select[name=instrument]').value;
    var selOpl = query('select[name=opleiding]').value;
    var selPl = query('select[name=woonplaats]').value;
    
    HttpRequest.getString("/zoek?plaats=$selPl&opleiding=$selOpl&instrument=$selInst").then(onStudentsLoaded);

  }
  void change_instrument(Event event) {
    var sel = query('select[name=instrument]').value;
    query('select[name=woonplaats]').selectedIndex = 0;
    query('select[name=opleiding]').selectedIndex = 0;
    print(sel);
    HttpRequest.getString("/zoek/instrument/$sel").then(onStudentsLoaded);

  }
  void change_opleiding(Event event) {
    query('select[name=woonplaats]').selectedIndex = 0;
    query('select[name=instrument]').selectedIndex = 0;

    var sel = query('select[name=opleiding]').value;
    print(sel);
    HttpRequest.getString("/zoek/opleiding/$sel").then(onStudentsLoaded);

  }
  
  
  void onFindByWoonplaats(String responseText) {
    List json = parse(responseText);
    print(json);
  }
}
  
  
  
