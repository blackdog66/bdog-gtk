package gtk;

import gtk.Model;
import haxe.io.Bytes;

class Server {

  static var sock:neko.net.Socket;
  
  public static function
  connect(port:Int) {
    sock = new neko.net.Socket();
    sock.connect(new neko.net.Host("localhost"),port);
  }

  public static function
  send(o:String) {
    trace("writing "+o);
    sock.write(o);

    var
      s = haxe.io.Bytes.alloc(128),
      l = sock.input.readBytes(s,0,128),
      p = s.readString(0,l);
    
    trace("read "+p);
    return p.toString();
  }

  public static inline function
  outWidget(s:String):Widget {
    return s;
  }

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
  inWidget(w:Widget):Widget {
    if (w == null)
      return "NULL";
    return w;
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
  inBytes(b:Bytes):String {
    return b.toString();
  }
}