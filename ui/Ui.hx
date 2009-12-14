
package ui;

import gtk.Model;
import gtk.Server;
import gtk.Gtk;
import gtk.Glade;

class Ui {
  
  public static function init(port:Int) {
    Server.connect(port);
    Gtk.init(null,null);
    Glade.init();
  }
  
  public static function
  fromFile(gladeFile:String) {
    return Glade.xmlNew(gladeFile,null,null);
  }

  public static function
  get(glade:Widget,name:String) {
    return Glade.xmlGetWidget(glade,name);
  }

  public static function
  button(glade:Widget,name:String):Button {
    return Glade.xmlGetWidget(glade,name);
  }

  public static function
  window(glade:Widget,name:String):Window {
       return Glade.xmlGetWidget(glade,name); 
  }

  public static function
  show(w:Widget) {
     Gtk.widgetShowAll(w);
  }
 
}

