
package ui;

import gtk.Model;
import gtk.Gtk;
//import gtk.Ui;

class ButtonTools {
  public static function label(b:Button,s:String) {
    Gtk.buttonSetLabel(b,s);
  }
}