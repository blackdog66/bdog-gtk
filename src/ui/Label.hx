
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

class Label extends Widget {

  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:Label->Void) {
    Ui.getGladeWidget(glade,name,function(w) {
        fn(new Label(w));
      });
  }
  
  public function label(s:String) {
    Gtk.labelSetText(id,s);
  }
}