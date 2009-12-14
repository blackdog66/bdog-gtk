
package gtk;

import gtk.Model;
import gtk.Server; 
import haxe.io.Bytes;

class Glade {
public static function init():Void {
Server.send("glade_init ");
}
public static function xmlNewFromBuffer(p1:String,p2:Int,p3:Widget,p4:Widget):Widget {
return Server.outWidget(Server.send("glade_xml_new_from_buffer "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4)));
}
public static function xmlNew(p1:String,p2:Widget,p3:Widget):Widget {
return Server.outWidget(Server.send("glade_xml_new "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3)));
}
public static function xmlSignalAutoconnect(p1:Widget):Void {
Server.send("glade_xml_signal_autoconnect "+Server.inWidget(p1));
}
public static function xmlGetWidget(p1:Widget,p2:String):Widget {
return Server.outWidget(Server.send("glade_xml_get_widget "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
}