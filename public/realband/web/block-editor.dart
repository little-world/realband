import 'package:web_ui/web_ui.dart';
import 'dart:async';
import 'dart:html';
import 'dart:json';


class BlockEditor extends WebComponent {
  
  var website="";
  int row, col;
  Element par;
  TextAreaElement textarea;
  
  var _dropZone;
   
  inserted() {
    textarea = this.query("textarea");
  }
  
  void select(name) {
       
    website = name;

    textarea.style
    ..marginTop = '15px'
    ..height = '150px';
    
    if(website == 'youtube') {
      textarea.placeholder = "kopieer de url: youtube.com/watch ...";
    } else if (website == 'soundcloud') {
      textarea.placeholder = '''kopieer een groep sounds; gebruik share -> widget''';
    } else if (website == 'foto') {
      textarea.placeholder = '''sleep je foto hierin''';
      _dropZone = textarea;
      _dropZone.onDragOver.listen(_onDragOver);
      _dropZone.onDragEnter.listen((e) => _dropZone.classes.add('hover'));
      _dropZone.onDragLeave.listen((e) => _dropZone.classes.remove('hover'));
      _dropZone.onDrop.listen(_onDrop);
      _dropZone.classes.add("drop");
    } else if (website == 'text') {
      textarea.placeholder = '''type of kopieer je eigen html tekst''';
       
    }
     
    var one = new Duration(seconds: 1);
    new Timer(one, () => textarea.focus());
    
    
   
  }
  
  void parenting(parent, website, row, col) {
    this.par = parent;
    this.row = row;
    this.website = website;
    this.col = col;
    var content = par.query('.content');
    
    if (content.innerHtml.length > 1) {
       textarea.value = content.innerHtml;   
      textarea.style
      ..marginTop = '15px'
      ..height = '150px';
    } else {
      textarea.style
      ..marginTop = '0px'
      ..height = '0px';
      textarea.value = ""; 
    }
   
    
    this.queryAll('.editor-button').forEach((Element e) {
        if (e.classes.contains(website)) 
          e.style..backgroundImage =  'linear-gradient(-200deg, #38a3ca, #7073ba ,#7030ba)' 
          ..color = 'white';
        else 
          e.style..backgroundImage =  'linear-gradient(-30deg, #88a3ca, #3883ca ,#3030ba)' 
              ..color = '#ccc';
                
      
    });
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
    } else if (website == 'text') {
      content.innerHtml = textarea.value;
    } else if (website == 'foto') {
      var imgId = textarea.value;
      content.style..backgroundImage = "url('/block/image/$imgId')"
      ..backgroundRepeat = 'no-repeat'
      ..backgroundPosition = 'center'
      ..backgroundSize = 'cover';
    } else {
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
  
  void _onDragOver(MouseEvent event) {
    event.stopPropagation();
    event.preventDefault();
    event.dataTransfer.dropEffect = 'copy';
  }
  
  void _onDrop(MouseEvent event) {
    event.stopPropagation();
    event.preventDefault();
    _dropZone.classes.remove('hover');
    var file = event.dataTransfer.files[0];
    print ("file: " + file.name);
    _upload(file);
    //_putImage(file);
  }
  
  void _upload(File file) {
    var student = window.location.hash.substring(1); 
   
    
    FormData data =  new FormData();
    data.append("id", student);
    data.append("image", file);
  
    print(data);
    var req = new HttpRequest();
    req.open('put', "/block/image",  async:false);
    req.setRequestHeader('enctype', 'multipart/form-data');
    req.send(data);
    if (req.status == 200) {
        print('result: ${req.responseText}');
        textarea.value = req.responseText;
        textarea.style
          ..backgroundColor = 'rgba(255,255,255,0.7)' 
          ..backgroundImage =  "url('/block/image/${req.responseText}') "
          ..backgroundRepeat = 'no-repeat'
          ..backgroundPosition = 'center'
          ..backgroundComposite = 'destination-over'  // webkit only
          ..backgroundSize = 'cover';
      }
   
  }
 
}
