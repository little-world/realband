import 'dart:html';
import 'dart:json';



var hash = window.location.hash != null ? window.location.hash.substring(1): 6;
var height;

void main() {
  // Enable this to use Shadow DOM in the browser.
  //useShadowDom = true;

  int docHeight = (document.window.innerHeight-100).toInt(); 
  query('body').style.height = docHeight.toString() + 'px';
  queryAll('section').forEach((session) => session.style.height = (docHeight /3).floor().toString() + 'px');
  height = ((docHeight /3).floor() - 120).toString() + 'px';
  query('.hero-unit').style.height = height;
  

}

bool toggle = true;

void edit() {
  
  queryAll('.html-block').forEach((Element blk) {
    blk.xtag.editable(toggle);
  });
  query('.visite-kaart').xtag.editable(toggle);
  
  
  
  toggle = !toggle;
}


