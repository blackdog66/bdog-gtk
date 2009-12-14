
package gtk;

enum Event {
  clicked;
  enter;
  leave;
}

typedef Widget = String;
typedef CallBack = Widget->Event->Void;
typedef Button = Widget;
typedef Window = Widget;