
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

import ui.TextBuffer;

class TextView extends Widget {

  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:TextView->Void) {
    Ui.getGladeWidget(glade,name,function(w:String) {
        fn(new TextView(w));
      });
  }
  
  public function setBuffer(b:TextBuffer) {
    Gtk.textViewSetBuffer(id,b.toString());
  }

  public function getBuffer(fn:TextBuffer->Void) {
    Gtk.textViewGetBuffer(id,function(tb) {
        fn(new TextBuffer(tb));
      });
  }
  
}