library registratie;

import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';
import 'dart:async';

import 'package:unittest/unittest.dart';
import 'package:forms/textfield.dart';


class Student {
  String naam;
  String email;
  String password;
  String woonplaats;
  String telefoon;
  String url="";
  String opleiding;
  List<String> instrument = [];
 
 
  
  toJson() {
    var map = {};
    map['naam'] = naam != null ? naam : "";
    map['email'] = email;
    map['password'] = password;
    map['woonplaats'] = woonplaats;
    map['telefoon'] = telefoon  ;
    map['url'] =  url ;
    map['opleiding'] = opleiding;
    map['instrument'] = instrument;
    
    return stringify(map);
  }
  
  Student() {}
  Student.fromForm() {
    naam = query('div[name=naam]').xtag.textValue;
    email = query('div[name=email]').xtag.textValue;
    password = query('div[name=password]').xtag.textValue;
    woonplaats = query('div[name=woonplaats]').xtag.textValue;
    telefoon = query('div[name=telefoon]').xtag.textValue;
    opleiding = query('div[name=opleiding]').xtag.textValue;   
    instrument = query('div[name=instrument]').xtag.textValue;   
    url = query('div[name=url]').xtag.textValue;   
  }
  
  Student.fromJson(responseText) {
    var map = parse(responseText);
    naam = map['naam'];
    email = map['email'];
    password = map['password'];
    woonplaats = map['woonplaats'];
    telefoon = map['telefoon'];
    url = map['url'];
    opleiding = map['opleiding'];
  }
  
  toForm() {
     query('div[name=naam]').xtag.textValue = naam;
     query('div[name=email]').xtag.textValue = email;
     query('div[name=password]').xtag.textValue = password;
     query('div[name=woonplaats]').xtag.textValue = woonplaats;
     query('div[name=telefoon]').xtag.textValue = telefoon;
     query('div[name=opleiding]').xtag.textValue = opleiding;   
     query('div[name=url]').xtag.textValue = url;   
     query('div[name=instrument]').xtag.textValue = instrument;   
  }
}


var docu = document;

var disabled=false;

void main() {
  // Enable this to use Shadow DOM in the browser.
  //useShadowDom = true;
  
  int docHeight = (document.window.innerHeight-100).toInt(); 
  query('body').style.height = docHeight.toString() + 'px';
  queryAll('section').forEach((section) => section.style.height = (docHeight /3).floor().toString() + 'px');
  query('section#section2').style.height = (docHeight *2/3).floor().toString() + 'px';
  query('.hero-unit').style.height = ((docHeight /3).floor() - 120).toString() + 'px';
  
 
 
  
  var hash = window.location.hash;
  if(!hash.isEmpty) {
    var stdId = hash.substring(1);
    load(stdId);
    
    query('#register').text = "Wijzigen";
  }
}

void load(stdId) {
    HttpRequest.getString('/student/${stdId}').then((responseText) {
    var student = new Student.fromJson(responseText);    
    HttpRequest.getString('/instruments/${stdId}').then((instrumentsText) {
      print(instrumentsText);
      student.instrument = parse(instrumentsText);
      student.toForm();
    });
  });
  
}  

 
void register() {
  Student student = new Student.fromForm();
  print("register student: " + student.toJson());
  var req = new HttpRequest();
  req.open('put', "/register", async:false);
  req.setRequestHeader('Content-type', 'application/json');
  req.send(student.toJson());
  
  // LET OP async: false
  if (req.status == 200 || req.status == 0) {
    print("id ${req.responseText}");
    var id = req.responseText;
    window.location.assign("/web/out/student.html#$id" );
  }
  else {
    print('/register error: ${req.responseText}');
  }
}


