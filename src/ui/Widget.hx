package ui;

import gtk.Gtk;

class Widget {

  var id:String;
  
  public function new(id:String) {
    this.id = id;
  }

  public function toString() {
    return id;
  }

  public function hide() {
    Gtk.widgetHide(id);
  }

  public function show() {
    Gtk.widgetShow(id);
  }
 
  public function show() {
    Gtk.widgetShowAll(id);
  }
 
}
