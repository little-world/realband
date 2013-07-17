import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';
    
class VisiteKaart extends WebComponent {
  var student; 
  var height;
  
  var _dropZone;
  
  inserted() {
    this.query('#visite-kaart').onClick.listen((e){
      window.location.assign("/web/out/student.html#$student" );
    });
    
    HttpRequest.getString("/student/$student").then(onStudentLoaded);
    HttpRequest.getString("/instruments/$student").then(onInstrumentsLoaded);
    loadAvatar();  
  }

  loadAvatar() {
    _dropZone = this.query('#drop-zone');
    var thumbnail = new ImageElement(src: "/avatar/$student");
    thumbnail.onLoad.listen((_) {
      thumbnail.classes.add('my-photo');
      var thumbHolder = new Element.tag('span');
      thumbHolder.nodes.add(thumbnail);
      _dropZone.nodes.clear();
      _dropZone.nodes.add(thumbnail);
      _dropZone.style.background = 'none';
      _dropZone.classes.remove('drop');
    });
  }

void onStudentLoaded(String responseText) {
  Map json = parse(responseText);
    
  StringBuffer sb = new StringBuffer("<table class='profiel'>");
  json.keys.forEach((key) {
    if(key != 'password' && key != 'url')
    sb.writeln("<tr><td>$key:</td><td>${json[key]}</td></tr>");
  });
  sb.writeln("</table>");
  this.query('#profiel').innerHtml = sb.toString();
 
  var vs = this.query('#visite-kaart').offset;
  var left = vs.topLeft.x + (vs.width/2).ceil();
  var top = vs.topLeft.y + (vs.height/2).ceil() -20;
  
  print ("${vs.topLeft} ${vs.width} ::  $left $top" );
  
  this.query('.xxxx').style.left = "${left}px";
  this.query('.xxxx').style.top = "${top}px";
  this.query('.xxxx').style.display = 'none';

} 

void onInstrumentsLoaded(String responseText) {
  List json = parse(responseText);
  
  StringBuffer sb = new StringBuffer("<table class='profiel'>");
  var instrs = json.join(", ");
  sb.writeln("<tr><td style='vertical-align: top'>instrument: </td><td>$instrs</td></tr></table>");
  this.query('#instruments').innerHtml = sb.toString();
 
} 

void submit(Event event) {
  final bt = event.target as Element;
   print("in visitekaart edit");
   var hash = window.location.hash.substring(1);
   window.location.assign("/web/out/registratie.html#${hash}");
}

var mouseOver;
var mouseOut;
void editable(bool ed) {
  var blk = this.query('#visite-kaart');  
  if (ed) {     
    _dropZone.onDragOver.listen(_onDragOver);
    _dropZone.onDragEnter.listen((e) => _dropZone.classes.add('hover'));
    _dropZone.onDragLeave.listen((e) => _dropZone.classes.remove('hover'));
    _dropZone.onDrop.listen(_onDrop);
    
    mouseOver = blk.onMouseOver.listen((e) {
      this.query('.xxxx').style.display = 'inline-block';
      
    });
    mouseOut = blk.onMouseOut.listen((e) =>  this.query('.xxxx').style.display = 'none');
    _dropZone.classes.add("drop");
    
  } else {
    if(mouseOver != null) mouseOver.cancel();
    if(mouseOut != null) mouseOver.cancel();
    _dropZone.classes.remove("drop");
  }
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
    FormData data =  new FormData();
    data.append("id", student);
    data.append("avatar", file);
  
    var req = new HttpRequest();
    req.open('put', "/avatar");
    req.setRequestHeader('enctype', 'multipart/form-data');
    req.send(data);
    req.onLoadEnd.listen((e) {
      if (req.status == 200) {
        print('result: ${req.responseText}');
        loadAvatar();
      }
    });
  }
  
  
  // is vervangen door een aanroep van laodAvatar() 
  // laten staan voor als het toch mis gaat
  void _putImage(File file) {
    if (file.type.startsWith('image')) {
      var reader = new FileReader();
      reader.onLoad.listen((e) {
        var thumbnail = new ImageElement(src: reader.result);
        thumbnail.classes.add('my-photo');
        var thumbHolder = new Element.tag('span');
        thumbHolder.nodes.add(thumbnail);
  
        _dropZone.nodes.clear();
        _dropZone.nodes.add(thumbnail);
        _dropZone.style.background = 'none';
        _dropZone.classes.remove('drop');
      });
      reader.readAsDataUrl(file);
    }
  }

}



