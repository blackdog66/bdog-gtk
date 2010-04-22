package gtk;

import gtk.Model;

#if neko
import haxe.io.Bytes;
#elseif nodejs
import js.Node;
#end

class Server {

  #if neko
  static var sock:neko.net.Socket;
  #elseif nodejs
  static var handlers = new Array<{cmd:String,fn:Dynamic->Void}>();
  static var child:ChildProcess;
  public static var ready:Void->Void; 
  #end
  
  public static function
  connect(port:Int) {
    #if neko
    sock = new neko.net.Socket();
    sock.connect(new neko.net.Host("localhost"),port);
    
    #elseif nodejs

    child = Node.spawn("gtk-server",["-stdin"]);
    //    stream = Node.net.createConnection(port,'localhost');
    //stream.addListener('connect',function(s) {
    //  stream.setEncoding('ascii');
        child.stdout.addListener('data',function(d:String) {
            //    trace("========================");
            // process all incoming ...
            //            trace(handlers.length+" handlers pending");
            d = Std.string(d);
            var toProcess = handlers.length;
            var lines = d.split("\n");
            for (l in lines) {
              if (l.length == 0) continue;
              //trace("line data:"+l);
              var h = handlers.shift();
              
              if (h != null && h.fn != null) {
                try {
                  toProcess--;
                  if (!StringTools.startsWith(h.cmd,"gtk_server_callback"))
                  trace("DOING "+h.cmd);
                  h.fn(l);
                } catch (exc:Dynamic) {
                  trace("handler exception:"+exc);
                }
              }
            }
            // if there are any handlers left then start of processing again
            if (toProcess > 0) {
              // continue the writing ...
              //trace('continuing with:'+handlers[0].cmd);
              child.stdin.write(handlers[0].cmd);
            }
            //trace("--------");
          });
        
        ready();
        //});

    #end
    
  }

  public static function
  send(o:String,?fn:Dynamic->Void) {
    
    //trace("writing "+o);

#if neko
    sock.write(o);

    var
      s = haxe.io.Bytes.alloc(128),
      l = sock.input.readBytes(s,0,128),
      p = s.readString(0,l);
    
    trace("read "+p);
    fn(p.toString();)
      
#elseif nodejs

    if (fn == null)
      fn = function(d) {  }
      
    handlers.push({cmd:o,fn:fn});

    if (handlers.length == 1) {
      if (!StringTools.startsWith(o,"gtk_server_callback"))
        trace('starting with '+o);
      child.stdin.write(o);

    }

#end
    
  }

  /*
  public static inline function
  outWidget(s:String):Widget {
    return s;
  }
  */

  public static inline function
  outString(s:String):String {
    return s;
  }

  public static inline function
  outInt(s:String):Int {
    return Std.parseInt(s);
  }
  
  public static inline function
  outBool(s:String):Bool {
    return (s == "1");
  }
  
  public static function
  outFloat(s:String):Float {
    return Std.parseFloat(s);
  }

  public static function
  outDynamic(s:String):Dynamic {
    if (s == "NULL")
      return null;
    return s;
  }

  public static function
  inDynamic(d:Dynamic) {
    return Std.string(d);
  }
  
  public static function
  inString(s:String):String {
    if (s == null)
      return "NULL";
    return '"' + s + '"';
  }
  
  public static function
  inWidget(w:Widget):String {
    if (w == null)
      return "NULL";
    return w.toString();
  }
  
  public static function
  inBool(b:Bool):String {
    return (b) ? "1" : "0";
  }

  public static function
  inFloat(f:Float):Float {
    return f;
  }

  public static function
  inInt(i:Int):Int {
    return i;
  }

  public static function
  inBytes(b:String):String {
    return b.toString();
  }
}