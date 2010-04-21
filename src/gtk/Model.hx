
package gtk;

enum Event {
  clicked;
  enter;
  leave;
  changed;
  delete_event;
  destroy;
}

class Widget {

  var id:String;
  
  public function new(id:String) {
    this.id = id;
  }

  public function toString() {
    return id;
  }

}

class GladeXml extends Widget {}

typedef CallBack = Widget->Event->Void;

