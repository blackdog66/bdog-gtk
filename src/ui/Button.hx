
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

class Button extends Widget {

  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:Button->Void) {
    Ui.getGladeWidget(glade,name,function(w:String) {
        fn(new Button(w));
      });
  }
  
  public function label(s:String) {
    Gtk.buttonSetLabel(id,s);
  }
  
}