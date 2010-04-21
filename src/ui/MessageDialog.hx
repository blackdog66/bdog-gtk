 
package ui;

import gtk.Model;
import gtk.Gtk;
import gtk.Glade;

enum GtkDialogFlags {
  GTK_DIALOG_MODAL  ;
  GTK_DIALOG_DESTROY_WITH_PARENT ;
  GTK_DIALOG_NO_SEPARATOR     ; 
} 

enum GtkMessageType {
  GTK_MESSAGE_INFO;
  GTK_MESSAGE_WARNING;
  GTK_MESSAGE_QUESTION;
  GTK_MESSAGE_ERROR;
  GTK_MESSAGE_OTHER;
} 

enum GtkButtonsType {
  GTK_BUTTONS_NONE;
  GTK_BUTTONS_OK;
  GTK_BUTTONS_CLOSE;
  GTK_BUTTONS_CANCEL;
  GTK_BUTTONS_YES_NO;
  GTK_BUTTONS_OK_CANCEL;
}

enum GtkResponseType {
  GTK_RESPONSE_NONE ;
  GTK_RESPONSE_REJECT ;
  GTK_RESPONSE_ACCEPT ;
  GTK_RESPONSE_DELETE_EVENT;
  GTK_RESPONSE_OK;
  GTK_RESPONSE_CANCEL;
  GTK_RESPONSE_CLOSE;
  GTK_RESPONSE_YES;
  GTK_RESPONSE_NO ;
  GTK_RESPONSE_APPLY;
  GTK_RESPONSE_HELP;
} 



class MessageDialog extends Widget {

  public static function
  flagValue(f:GtkDialogFlags) {
    return switch(f) {
    case GTK_DIALOG_MODAL: 1 << 0;
    case GTK_DIALOG_DESTROY_WITH_PARENT: 1 << 1;
    case GTK_DIALOG_NO_SEPARATOR: 1 << 2;
    }
  }

  public static function
  responseValue(f:GtkResponseType) {
    return -Type.enumIndex(f) - 1;
  }

  public static function
  responseEnum(i:Int) {
    var cons = switch(i) {
      case -1   :  "GTK_RESPONSE_NONE" ;
      case -2   :  "GTK_RESPONSE_REJECT" ;
      case -3   :  "GTK_RESPONSE_ACCEPT" ;
      case -4   :  "GTK_RESPONSE_DELETE_EVENT";
      case -5   :  "GTK_RESPONSE_OK";
      case -6   :  "GTK_RESPONSE_CANCEL";
      case -7   :  "GTK_RESPONSE_CLOSE";
      case -8   :  "GTK_RESPONSE_YES";
      case -9   :  "GTK_RESPONSE_NO" ;
      case -10  :  "GTK_RESPONSE_APPLY";
      case -11  :  "GTK_RESPONSE_HELP";
    };
    return Type.createEnum(GtkResponseType,cons);
  }
  
  public function new(id:String) {
    super(id);
  }
    
  public static function
  fromGlade(glade:GladeXml,name:String,fn:MessageDialog->Void) {
    Ui.getGladeWidget(glade,name,function(w:String) {
        fn(new MessageDialog(w));
      });
  }

  public static function
  show(m:String,w:Window,df:GtkDialogFlags,mt:GtkMessageType) {
    Gtk.messageDialogNew(w.toString(),flagValue(df),Type.enumIndex(mt),Type.enumIndex(GTK_BUTTONS_OK),m,"NULL",
                         function(w) {
                         Gtk.dialogRun(w,function(a) {
                               Gtk.widgetDestroy(w);
                             });
                         });
                    
  }

  public static function info(m:String,w:Window) {
    MessageDialog.show(m,w,GTK_DIALOG_DESTROY_WITH_PARENT,GTK_MESSAGE_INFO);
  }
  
  
}