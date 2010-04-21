
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

class Combo extends Widget {

  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:Combo->Void) {
    Ui.getGladeWidget(glade,name,function(w) {
        fn(new Combo(w));
      });
  }
  
  public function
  selectedIndex(fn:Int->Void) {
    Gtk.comboBoxGetActive(id,fn);
  }

  public function
  selected(fn:String->Void) {
    Gtk.comboBoxGetActiveText(id,fn);
  }
}