
package ui;

import gtk.Model;
import gtk.Gtk;

class ButtonTools {
  public static function label(b:Button,s:String) {
    Gtk.buttonSetLabel(b,s);
  }
}