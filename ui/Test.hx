
package ui;

import gtk.Model;
import gtk.Gtk;
import ui.Ui;
using ui.ButtonTools;
using ui.EventTools;

class Test {

  public static function
  main() {

    Ui.init();
    var
      g = Ui.fromFile("fs.glade"),
      win = Ui.button(g,"window1"),
      btn1 = Ui.button(g,"button1"),
      btn2 = Ui.button(g,"button2"),
      btn3 = Ui.button(g,"button3");
    
    btn1.label("this sets!");

    btn2.event(clicked,function(w:Widget,e:Event) {
        trace("ok this works ");
      });
    btn2.event(enter,function(w:Widget,e:Event) {
        trace("entering btn2");
      });
    btn3.event(clicked,function(w:Widget,e:Event) {
        btn2.removeEvent(enter);
      });
    
    EventTools.poll(win);
  }


  public static
  function simple() {
    
    var win = Gtk.windowNew(0);
    Gtk.windowSetTitle(win,"Nice");
    Gtk.windowSetDefaultSize(win,500,500);
    Gtk.windowSetPosition(win,1);
    var tbl = Gtk.tableNew(30,30,true);
    Gtk.containerAdd(win,tbl);
    var btn1 = Gtk.buttonNewWithLabel("Exit");
    Gtk.tableAttachDefaults(tbl,btn1,17,28,20,25);
    var btn2 = Gtk.buttonNewWithLabel("Print Text");
    Gtk.tableAttachDefaults(tbl,btn2,2,13,20,25);
    var entry = Gtk.entryNew();
    Gtk.tableAttachDefaults(tbl,entry,2,28,5,15);
    Gtk.widgetShowAll(win);
    
  }
}