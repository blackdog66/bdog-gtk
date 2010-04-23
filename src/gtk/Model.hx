
package gtk;

import ui.Widget;

enum Event {
  clicked;
  enter;
  leave;
  changed;
  delete_event;
  destroy;
}


class GladeXml extends Widget {}

typedef CallBack = Widget->Event->Void;

