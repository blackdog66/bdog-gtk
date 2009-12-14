package ui;

import gtk.Model;
import gtk.Server;
import gtk.Gtk;
import gtk.Glade;

class EventTools {
  static var pending = new IntHash<{w:Widget,e:Event,fn:CallBack}>();
  static var widgetEvents = new Hash<Int>();

  public static function
  event(w:Widget,e:Event,f:CallBack) {
    var
      id = Std.int(Math.random()*1000000),
      sig = Type.enumConstructor(e);
    pending.set(id,{w:w,e:e,fn:f});
    widgetEvents.set(w+sig,id);
    Gtk.serverConnect(w,sig,Std.string(id));
  }

  public static function
  removeEvent(w:Widget,e:Event) {
    var
      l = w + Type.enumConstructor(e),
      id = widgetEvents.get(l);
    if (id != null) {
      Gtk.serverDisconnect(w,Std.string(id));
      widgetEvents.remove(l);
      pending.remove(id);
    }
  }
 
  public static function
  poll(win) {    
    Gtk.widgetShowAll(win);
    do {
      var event = Gtk.serverCallback("WAIT");
      try {
        var 
          id = Std.parseInt(event),
          obj = pending.get(id);
        if (obj != null) {
          try {
            obj.fn(obj.w,obj.e);
          } catch(exc:Dynamic) {
            trace("Err with "+obj);
          }
        }
      } catch (ex:Dynamic) { trace("poll:"+ex);}
    } while (true);
  }
}
