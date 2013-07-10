import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';


class HtmlEditorComponent extends WebComponent {
  int row, col;
  SelectElement fonts;
  SelectElement fontSize;
  TextAreaElement textarea;
  Element par;
  
  String selectedText;
  
  inserted() {
    textarea = this.query("textarea");
    textarea.value = "";
    this.queryAll('.btn-toolbar .btn').forEach((bt) {
      if (bt.id =="ul")
        bt.onClick.listen(_list);
      else 
        bt.onClick.listen(_edit);
    });
    
    fonts = query('#font-family');
    fonts.onChange.listen(_fonts);
    fontSize = query('#font-size');
    fontSize.onChange.listen(_fonts);
  }
  

  
  void test() {
    query("#result").innerHtml = textarea.value;
  }
  
  void parenting(parent, row, col) {
    this.par = parent;
    this.row = row;
    this.col = col;
    var content = par.query('.content');
    textarea.value = content.innerHtml;   
    this.query('#result').innerHtml = '';
  }
  
  void close() {
    this.style.display = "none";
  }
  
  void submit(Event event) {
    var content = par.query('.content');
    
    var hash = window.location.hash.substring(1); 
    var stdID = int.parse(hash, onError: (_) => -1);
    if (stdID < 0) return;
    
    var map = {};
    map['studentId'] = stdID;
    map['content'] = textarea.value;
    map['row'] = row;
    map['col'] = col;
     
    print(stringify(map));
    
    var req = new HttpRequest();
    req.open('put', '/student/saveHtml');
    req.setRequestHeader('Content-type', 'application/json');
    req.send(stringify(map));
    
    req.onLoadEnd.listen((e) => print("succes ${req.response}"));
    
    content.innerHtml = textarea.value;
  
    this.style.display = "none";  
   
  }
  
  void delete() {
    var hash = window.location.hash.substring(1); 
    var stdID = int.parse(hash, onError: (_) => -1);
    if (stdID < 0) return;
    
    var map = {};
    map['studentId'] = stdID;
    map['content'] = textarea.value;
    map['row'] = row;
    map['col'] = col;
     
    print(stringify(map));
    
    var req = new HttpRequest();
    req.open('put', '/student/deleteHtml');
    req.setRequestHeader('Content-type', 'application/json');
    req.send(stringify(map));
    
    req.onLoadEnd.listen((e) => print("deleted ${req.response}"));
  
    var content = par.query('.content');
    content.children.clear();
    
    this.style.display = "none";  
  
    
    // strange the hashtag is removed from the url 
   
  }
  
  _edit(Event event) {
    
    event.preventDefault();
    event.stopPropagation();
     var caption = event.target.text;
     

     int start = textarea.selectionStart;
     int end = textarea.selectionEnd;
     
     String buf1 = textarea.value.substring(0, start);
     String buf2 = textarea.value.substring(start, end);
     String buf3 = textarea.value.substring(end);
     
     String buf2X= "";
     if (caption == 'ul') {
      StringBuffer sb = new StringBuffer("\n<ul>\n"); 
      var listitems =  buf2.split('\n');
      listitems.forEach((item) {
        sb.add(" <li>${item.trim()}</li>\n");
      });
      sb.add("</ul>\n");
      
      buf2X = sb.toString();
      
     } else {
        buf2X = "<$caption>$buf2</$caption>";
     }
     
     String result = "${buf1}${buf2X}${buf3}";    
  
     textarea.value = result;
  }
  
 _list(Event event) {
    
    event.preventDefault();
    event.stopPropagation();

     int start = textarea.selectionStart;
     int end = textarea.selectionEnd;
     
     String buf1 = textarea.value.substring(0, start);
     String buf2 = textarea.value.substring(start, end);
     String buf3 = textarea.value.substring(end);
     
      StringBuffer sb = new StringBuffer("\n<ul>\n"); 
      var listitems =  buf2.split('\n');
      listitems.forEach((item) {
        sb.write(" <li>${item.trim()}</li>\n");
      });
      sb.write("</ul>\n");
      
     String result = "${buf1}${sb.toString()}${buf3}";    
  
     textarea.value = result;
  }
 
 _fonts (Event event) {
   int start = textarea.selectionStart;
   int end = textarea.selectionEnd;
   
   String buf1 = textarea.value.substring(0, start);
   String buf2 = textarea.value.substring(start, end);
   String buf3 = textarea.value.substring(end);
   
   
   String buf2X = "<span style='font: ${fontSize.selectedOptions[0].text}pt \"${fonts.selectedOptions[0].text}\"'>$buf2</span>";
   String result = "${buf1}${buf2X}${buf3}";    
   
   textarea.value = result;
 }

onSuccess(HttpRequest req) {
  print("succes ${req.response}"); // print the received raw JSON text
}
 
}
