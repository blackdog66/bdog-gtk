package ui;

import js.Node;
import gtk.Model;
import gtk.Server;
import gtk.Gtk;
import gtk.Glade;

class EventTools {
  static var pending = new IntHash<{w:Widget,e:Event,fn:CallBack}>();
  static var widgetEvents = new Hash<Int>();

  public static function
  poll(win) {
    Gtk.widgetShowAll(win);
    Node.setInterval(function() {
        Gtk.serverCallback("UPDATE",function(event) {
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
            } catch (ex:Dynamic) { trace("poll:"+ex);
            }
              trace("got an event"+event);
            });
      },200,[]);
  }
  
  
  public static function
  event(w:Widget,e:Event,?f:CallBack) {
    var
      id = Std.int(Math.random()*1000000),
      sig = Type.enumConstructor(e);
    if (f != null)
      pending.set(id,{w:w,e:e,fn:f});

    widgetEvents.set(w+sig,id);
  }

  public static function
  removeEvent(w:Widget,e:Event) {
    var
      l = w + Type.enumConstructor(e),
      id = widgetEvents.get(l);
    if (id != null) {
      Gtk.serverDisconnect(function(s) {
          trace(s);
        });
      widgetEvents.remove(l);
      pending.remove(id);
    }
  }

  /*
  public static function
  poll(win) {    
    Gtk.widgetShowAll(win);
    do {
      Gtk.serverCallback("WAIT",function(event) {
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
        });
    } while (true);
  }
  */
}
