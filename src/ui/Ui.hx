
package ui;

import js.Node;
import gtk.Model;
import gtk.Server;
import gtk.Gtk;
import gtk.Glade;

class Ui {
  
  public static function init(port:Int,ready:Void->Void) {
    gtk.Server.ready = function() {
      Gtk.init(null,null);
      Glade.init();
      ready();
    }
    
    gtk.Server.connect(port);
  }
  
  public static function
  fromFile(gladeFile:String,fn:GladeXml->Void) {
    Glade.xmlNew(gladeFile,null,null,function(id:String) {
        fn(new GladeXml(id));
      });
  }

  public static function
  getGladeWidget(glade:GladeXml,name,fn:String->Void) {
    Glade.xmlGetWidget(glade.toString(),name,function(w) {
        if (w == "0")
          throw "!!!! Didn't find " + name + " in glade file";
        else
          fn(w);
      });
  }
  
  public static function
  show(w:Widget) {
    Gtk.widgetShowAll(w.toString());
  }

  static var pending = new IntHash<{w:Widget,e:Event,fn:CallBack}>();
  static var widgetEvents = new Hash<Int>();

  public static function
  poll(win:Window) {
    Gtk.widgetShowAll(win.toString());
        
    Node.setInterval(function() {
        Gtk.serverCallback("UPDATE",function(event) {
            if (event != "0") {
              try {
                var 
                  id = Std.parseInt(event),
                  obj = pending.get(id);
                if (obj != null) {
                  try {
                    obj.fn(obj.w,obj.e);
                  } catch(exc:Dynamic) {
                    trace(exc);
                  }
                }
              } catch (ex:Dynamic) {
                trace("poll:"+ex);
            }

              // trace("woot:"+event);
            }
          });
        
        },100,[]);
    
  }
  
  
  public static function
  event(w:Widget,e:Event,?f:CallBack) {
    var
      id = Std.int(Math.random()*1000000),
      sig = Type.enumConstructor(e);
    if (f != null) {
      pending.set(id,{w:w,e:e,fn:f});
      
      Gtk.serverConnect(w.toString(),sig,Std.string(id),function(event) {
          trace("damn");
          /*
          if (event != "0") {
              try {
                var 
                  id = Std.parseInt(event),
                  obj = pending.get(id);
                trace("event "+id +" "+obj);
                if (obj != null) {
                  try {
                    obj.fn(obj.w,obj.e);
                  } catch(exc:Dynamic) {
                    trace("Err with "+obj);
                  }
                }
              } catch (ex:Dynamic) {
                trace("poll:"+ex);
            }
          }
          */
        });
         
      
    }

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

  
}

