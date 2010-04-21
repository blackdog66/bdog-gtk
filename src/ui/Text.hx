
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

class Text extends Widget {

  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:Text->Void) {
    Ui.getGladeWidget(glade,name,function(w) {
        fn(new Text(w));
      });
  }
  
  public function set(s:String) {
    Gtk.entrySetText(id,s);
  }

  public function get(fn:String->Void) {
    Gtk.entryGetText(id,fn);
  }
}