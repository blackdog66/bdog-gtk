
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;


class Window extends Widget {

  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:Window->Void) {
    Ui.getGladeWidget(glade,name,function(w:String) {
        fn(new Window(w));
      });
  }

  public function title(s:String) {
    Gtk.windowSetTitle(id,s);
  }
  
}