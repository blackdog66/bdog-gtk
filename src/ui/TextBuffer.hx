
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

class TextBuffer extends Widget {

  public static function New(fn:TextBuffer->Void) {
    Gtk.textBufferNew(null,function(tb) {
        trace("Got new text buffer "+tb);
        fn(new TextBuffer(tb));
      });
  }
  
  public function new(id:String) {
    super(id);
  }
  
  public function setText(s:String) {
    Gtk.textBufferSetText(id,s,s.length);
  }
  
}