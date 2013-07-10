import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';

@observable
var students;

void main() {
  HttpRequest.getString("/students").then(onStudentsLoaded);

  
}

void onStudentsLoaded(String responseText) {
  List json = parse(responseText);
  
  var length = json.length;

  List cols = new List(4);

  for (var col = 0; col < 4; col++) 
    cols[col] = new List();

   var std = 0;
   goto: while(true)
      for (var col = 0; col < 4; col++) {
        cols[col].add(json[std++]);
        if (std >= length) break goto;
      }
  print(cols);
  students = cols;
 
} 
