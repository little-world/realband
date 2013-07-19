import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';


//todo: backbutton does not reload the component.

class HtmlBlock extends WebComponent {
  var row;
  var col;
  var website = "";
  
  @observable
  bool edit = false;
  
 
  inserted() {
    //query('#html-editor').style.display = "none";   
   
   var left = this.offset.topLeft.x + (this.offset.width/2).ceil() -100;
   var top = this.offset.topLeft.y + (this.offset.height/2).ceil() -20;
   
   //print ("$row  $col :: $top $left" );
   
   this.query('.xxxx').style.left = "${left}px";
   this.query('.xxxx').style.top = "${top}px";
   this.query('.xxxx').style.display = 'none';

   
    var hash = window.location.hash.substring(1); 
    var stdID = int.parse(hash, onError: (_) => -1);
    if (stdID < 0) return;
    
    var map = {};
    map['studentId'] = stdID;
    map['website'] = "";
    map['content'] = "";
    map['row'] = row;
    map['col'] = col;
     
    print(stringify(map));
    
    var req = new HttpRequest();
    req.open('post', '/html');
    req.setRequestHeader('Content-type', 'application/json');
    req.send(stringify(map));
    req.onLoadEnd.listen((e) {
      if (req.status == 200 || req.status == 0) onHtmlLoaded(req.response);
      else website = "";
    });
  }
 
  void onHtmlLoaded(String responseText) {
    var json = parse(responseText);
    print("html: " + json.toString());
    website = json['website'];
    if (json['website'] == 'youtube') {
      var code = json['content'].substring(json['content'].lastIndexOf('=')+1);
      print(code);
      var el = new IFrameElement();
      el..src = "http://www.youtube.com/embed/${code}?feature=player_detailpage"
      ..attributes['frameborder'] = '0'
      ..attributes['allowfullscreen'] = 'true';
      el.style
        ..border = '7px solid black'
        ..borderRadius = '15px'
        ..width = '98%'
        ..height = '95.5%';
      this.query('.content').children.add(el);
      this.query('.block').style..border = 'none' ..boxShadow = 'none';
    } 
    else if (json['website'] == 'foto') {
      var imgId = json['content'];
      this.query('.content').style..backgroundImage = "url('/block/image/$imgId')"
          ..backgroundRepeat = 'no-repeat'
          ..backgroundPosition = '40% 85%'
          ..backgroundSize = 'cover';
    }
    else 
      this.query('.content').innerHtml = json['content'].toString();
    
  } 
  

  
  void submit(Event event) {
      final bt = event.target as Element;
      var htmlEditor = query('#block-editor');
      
      htmlEditor.xtag.parenting(bt.parent, website, row, col);
      query('#block-editor').style.display = "block";   
  }
  
  var mouseOver;
  var mouseOut;
  void editable(bool ed) {
    var blk = this.query('.block');  
    if (ed) {     
      mouseOver = blk.onMouseOver.listen((e) {
        this.query('.xxxx').style.display = 'inline-block';
      
      });
      mouseOut = blk.onMouseOut.listen((e) =>  this.query('.xxxx').style.display = 'none');
    } else {
      if(mouseOver != null) mouseOver.cancel();
      if(mouseOut != null) mouseOver.cancel();
    }
  }
 
}
