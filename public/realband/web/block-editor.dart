import 'package:web_ui/web_ui.dart';
import 'dart:async';
import 'dart:html';
import 'dart:json';


class BlockEditor extends WebComponent {
  
  var website="html";
  int row, col;
  Element par;
  TextAreaElement textarea;
   
  inserted() {
    textarea = this.query("textarea");
  }
  
  select(name) {
    
    
    website = name;

    textarea.style
    ..marginTop = '15px'
    ..height = '50px';
    
    if(website == 'youtube') {
      textarea.placeholder = "kopieer de url: youtube.com/watch ...";
    } else if (website == 'soundcloud') {
      textarea.placeholder = '''kopieer meedere sounds; gebruik share -> widget''';
    } else if (website == 'foto') {
      textarea.placeholder = '''sleep je foto hierin''';
    } else if (website == 'html') {
      textarea.placeholder = '''type of kopieer je eigen html tekst''';
       
    }
     
    var one = new Duration(seconds: 1);
    new Timer(one, () => textarea.focus());
    
    
   
  }
  
  void parenting(parent, row, col) {
    this.par = parent;
    this.row = row;
    this.col = col;
    var content = par.query('.content');
    
    if (content.innerHtml.length > 1) {
       textarea.value = content.innerHtml;   
      textarea.style
      ..marginTop = '15px'
      ..height = '50px';
    } else {
      textarea.style
      ..marginTop = '0px'
      ..height = '0px';
      textarea.value = ""; 
    }
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
    map['website'] = website;
    map['content'] = textarea.value;
    map['row'] = row;
    map['col'] = col;
     
    print(stringify(map));
    
    var req = new HttpRequest();
    req.open('put', '/student/saveContent');
    req.setRequestHeader('Content-type', 'application/json');
    req.send(stringify(map));
    
    req.onLoadEnd.listen((e) => print("succes ${req.response}"));
    
    
    if(website == 'youtube') {
      var code = textarea.value.substring(textarea.value.lastIndexOf('=')+1);
      var el = new IFrameElement();
      content.children.add(el);
      el..src = "http://www.youtube.com/embed/${code}?feature=player_detailpage"
      ..attributes['frameborder'] = '0'
      ..attributes['allowfullscreen'] = 'true';
      el.style
        ..border = '7px solid black'
        ..borderRadius = '15px'
        ..width = '98%'
        ..height = '95.5%';
        
      content.parent.classes.remove('block');
    } else if (website == 'soundcloud') {
      content.innerHtml = textarea.value;
    }else if (website == 'facebook') {
      content.innerHtml = textarea.value;
    }
    

  
    this.style.display = "none";  
    
  
   
  }
  
  Element findBlock(Element el) {
    print(el.classes);
    if (el.parent.classes.contains('block')) return el;
    else findBlock(el.parent);
  }
  
  void delete() {
    var hash = window.location.hash.substring(1); 
    var stdID = int.parse(hash, onError: (_) => -1);
    if (stdID < 0) return;
    
    var map = {};
    map['studentId'] = stdID;
    map['website'] = website;
    map['content'] = textarea.value;
    map['row'] = row;
    map['col'] = col;
     
    print(stringify(map));
    
    var req = new HttpRequest();
    req.open('put', '/student/deleteContent');
    req.setRequestHeader('Content-type', 'application/json');
    req.send(stringify(map));
    
    req.onLoadEnd.listen((e) => print("deleted ${req.response}"));
  
    var content = par.query('.content');
    content.children.clear();
    
    this.style.display = "none";  
  
    
    // strange the hashtag is removed from the url 
   
  }
  


onSuccess(HttpRequest req) {
  print("succes ${req.response}"); // print the received raw JSON text
}
 
}
