
package gtk;

import gtk.Model;
import gtk.Server; 
import haxe.io.Bytes;

class Gtk {
public static function windowNew(p1:Int):Widget {
return Server.outWidget(Server.send("gtk_window_new "+Server.inInt(p1)));
}
public static function windowSetTitle(p1:Widget,p2:String):Void {
Server.send("gtk_window_set_title "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function windowGetTitle(p1:Widget):String {
return Server.outString(Server.send("gtk_window_get_title "+Server.inWidget(p1)));
}
public static function windowSetDefaultSize(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_window_set_default_size "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function windowSetPosition(p1:Widget,p2:Int):Void {
Server.send("gtk_window_set_position "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function windowSetResizable(p1:Widget,p2:Bool):Void {
Server.send("gtk_window_set_resizable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function windowSetTransientFor(p1:Widget,p2:Widget):Void {
Server.send("gtk_window_set_transient_for "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function windowSetModal(p1:Widget,p2:Bool):Void {
Server.send("gtk_window_set_modal "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function windowMaximize(p1:Widget):Void {
Server.send("gtk_window_maximize "+Server.inWidget(p1));
}
public static function messageDialogNew(p1:Widget,p2:Int,p3:Int,p4:Int,p5:String,p6:String):Widget {
return Server.outWidget(Server.send("gtk_message_dialog_new "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6)));
}
public static function messageDialogNewWithMarkup(p1:Widget,p2:Int,p3:Int,p4:Int,p5:String,p6:String):Widget {
return Server.outWidget(Server.send("gtk_message_dialog_new_with_markup "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6)));
}
public static function windowSetIconFromFile(p1:Widget,p2:String,p3:Widget):Bool {
return Server.outBool(Server.send("gtk_window_set_icon_from_file "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3)));
}
public static function windowSetKeepAbove(p1:Widget,p2:Bool):Void {
Server.send("gtk_window_set_keep_above "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function windowSetKeepBelow(p1:Widget,p2:Bool):Void {
Server.send("gtk_window_set_keep_below "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function aboutDialogSetVersion(p1:Widget,p2:String):Void {
Server.send("gtk_about_dialog_set_version "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function windowSetPolicy(p1:Widget,p2:Int,p3:Int,p4:Int):Void {
Server.send("gtk_window_set_policy "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function windowFullscreen(p1:Widget):Void {
Server.send("gtk_window_fullscreen "+Server.inWidget(p1));
}
public static function windowUnfullscreen(p1:Widget):Void {
Server.send("gtk_window_unfullscreen "+Server.inWidget(p1));
}
public static function windowSetIconName(p1:Widget,p2:String):Void {
Server.send("gtk_window_set_icon_name "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function windowAddAccelGroup(p1:Widget,p2:Widget):Void {
Server.send("gtk_window_add_accel_group "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function windowSetTypeHint(p1:Widget,p2:Int):Void {
Server.send("gtk_window_set_type_hint "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function windowReshowWithInitialSize(p1:Widget):Void {
Server.send("gtk_window_reshow_with_initial_size "+Server.inWidget(p1));
}
public static function windowSetAcceptFocus(p1:Widget,p2:Bool):Void {
Server.send("gtk_window_set_accept_focus "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function windowPresent(p1:Widget):Void {
Server.send("gtk_window_present "+Server.inWidget(p1));
}
public static function windowIsActive(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_window_is_active "+Server.inWidget(p1)));
}
public static function tableNew(p1:Int,p2:Int,p3:Bool):Widget {
return Server.outWidget(Server.send("gtk_table_new "+Server.inInt(p1) + " "+Server.inInt(p2) + " "+Server.inBool(p3)));
}
public static function tableAttachDefaults(p1:Widget,p2:Widget,p3:Int,p4:Int,p5:Int,p6:Int):Void {
Server.send("gtk_table_attach_defaults "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5) + " "+Server.inInt(p6));
}
public static function containerAdd(p1:Widget,p2:Widget):Void {
Server.send("gtk_container_add "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function containerRemove(p1:Widget,p2:Widget):Void {
Server.send("gtk_container_remove "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function containerSetBorderWidth(p1:Widget,p2:Int):Void {
Server.send("gtk_container_set_border_width "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function hboxNew(p1:Bool,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_hbox_new "+Server.inBool(p1) + " "+Server.inInt(p2)));
}
public static function vboxNew(p1:Bool,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_vbox_new "+Server.inBool(p1) + " "+Server.inInt(p2)));
}
public static function boxPackStart(p1:Widget,p2:Widget,p3:Bool,p4:Bool,p5:Int):Void {
Server.send("gtk_box_pack_start "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inBool(p3) + " "+Server.inBool(p4) + " "+Server.inInt(p5));
}
public static function boxPackEnd(p1:Widget,p2:Widget,p3:Bool,p4:Bool,p5:Int):Void {
Server.send("gtk_box_pack_end "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inBool(p3) + " "+Server.inBool(p4) + " "+Server.inInt(p5));
}
public static function boxPackStartDefaults(p1:Widget,p2:Widget):Void {
Server.send("gtk_box_pack_start_defaults "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function boxPackEndDefaults(p1:Widget,p2:Widget):Void {
Server.send("gtk_box_pack_end_defaults "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function boxSetSpacing(p1:Widget,p2:Int):Void {
Server.send("gtk_box_set_spacing "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function buttonNew():Widget {
return Server.outWidget(Server.send("gtk_button_new "));
}
public static function buttonNewWithLabel(p1:String):Widget {
return Server.outWidget(Server.send("gtk_button_new_with_label "+Server.inString(p1)));
}
public static function buttonNewFromStock(p1:String):Widget {
return Server.outWidget(Server.send("gtk_button_new_from_stock "+Server.inString(p1)));
}
public static function buttonNewWithMnemonic(p1:String):Widget {
return Server.outWidget(Server.send("gtk_button_new_with_mnemonic "+Server.inString(p1)));
}
public static function buttonSetUseStock(p1:Widget,p2:Bool):Void {
Server.send("gtk_button_set_use_stock "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function buttonSetLabel(p1:Widget,p2:String):Void {
Server.send("gtk_button_set_label "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function buttonSetRelief(p1:Widget,p2:Int):Void {
Server.send("gtk_button_set_relief "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function hbuttonBoxNew():Widget {
return Server.outWidget(Server.send("gtk_hbutton_box_new "));
}
public static function buttonBoxSetLayout(p1:Widget,p2:Int):Void {
Server.send("gtk_button_box_set_layout "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function binGetChild(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_bin_get_child "+Server.inWidget(p1)));
}
public static function buttonClicked(p1:Widget):Void {
Server.send("gtk_button_clicked "+Server.inWidget(p1));
}
public static function toggleButtonNew():Widget {
return Server.outWidget(Server.send("gtk_toggle_button_new "));
}
public static function toggleButtonNewWithLabel(p1:String):Widget {
return Server.outWidget(Server.send("gtk_toggle_button_new_with_label "+Server.inString(p1)));
}
public static function toggleButtonNewWithMnemonic(p1:String):Widget {
return Server.outWidget(Server.send("gtk_toggle_button_new_with_mnemonic "+Server.inString(p1)));
}
public static function toggleButtonGetActive(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_toggle_button_get_active "+Server.inWidget(p1)));
}
public static function toggleButtonSetActive(p1:Widget,p2:Bool):Void {
Server.send("gtk_toggle_button_set_active "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function checkButtonNewWithLabel(p1:String):Widget {
return Server.outWidget(Server.send("gtk_check_button_new_with_label "+Server.inString(p1)));
}
public static function entryNew():Widget {
return Server.outWidget(Server.send("gtk_entry_new "));
}
public static function entryGetText(p1:Widget):String {
return Server.outString(Server.send("gtk_entry_get_text "+Server.inWidget(p1)));
}
public static function entrySetText(p1:Widget,p2:String):Void {
Server.send("gtk_entry_set_text "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function entrySetVisibility(p1:Widget,p2:Bool):Void {
Server.send("gtk_entry_set_visibility "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function editableDeleteText(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_editable_delete_text "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function editableGetChars(p1:Widget,p2:Int,p3:Int):String {
return Server.outString(Server.send("gtk_editable_get_chars "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3)));
}
public static function editableSetEditable(p1:Widget,p2:Bool):Void {
Server.send("gtk_editable_set_editable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function editableSelectRegion(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_editable_select_region "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function editableSetPosition(p1:Widget,p2:Int):Void {
Server.send("gtk_editable_set_position "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function editableGetPosition(p1:Widget):Int {
return Server.outInt(Server.send("gtk_editable_get_position "+Server.inWidget(p1)));
}
public static function editableGetSelectionBounds(p1:Widget,p2:Dynamic,p3:Dynamic):Bool {
return Server.outBool(Server.send("gtk_editable_get_selection_bounds "+Server.inWidget(p1) + " "+Server.inDynamic(p2) + " "+Server.inDynamic(p3)));
}
public static function editableInsertText(p1:Widget,p2:String,p3:Int,p4:Dynamic):Void {
Server.send("gtk_editable_insert_text "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inDynamic(p4));
}
public static function textBufferNew(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_buffer_new "+Server.inWidget(p1)));
}
public static function textBufferSetText(p1:Widget,p2:String,p3:Int):Void {
Server.send("gtk_text_buffer_set_text "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function textBufferInsertAtCursor(p1:Widget,p2:String,p3:Int):Void {
Server.send("gtk_text_buffer_insert_at_cursor "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function textBufferGetInsert(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_buffer_get_insert "+Server.inWidget(p1)));
}
public static function textBufferGetStartIter(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_buffer_get_start_iter "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textBufferGetEndIter(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_buffer_get_end_iter "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textBufferGetBounds(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_text_buffer_get_bounds "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function textBufferGetSelectionBounds(p1:Widget,p2:Widget,p3:Widget):Bool {
return Server.outBool(Server.send("gtk_text_buffer_get_selection_bounds "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3)));
}
public static function textBufferGetIterAtOffset(p1:Widget,p2:Widget,p3:Int):Void {
Server.send("gtk_text_buffer_get_iter_at_offset "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3));
}
public static function textBufferGetText(p1:Widget,p2:Widget,p3:Widget,p4:Bool):String {
return Server.outString(Server.send("gtk_text_buffer_get_text "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inBool(p4)));
}
public static function textBufferInsert(p1:Widget,p2:Widget,p3:String,p4:Int):Void {
Server.send("gtk_text_buffer_insert "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4));
}
public static function textBufferCreateTag(p1:Widget,p2:String,p3:String,p4:Int,p5:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_buffer_create_tag "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inWidget(p5)));
}
public static function textBufferInsertWithTagsByName(p1:Widget,p2:Widget,p3:String,p4:Int,p5:String,p6:String,p7:String,p8:Widget):Void {
Server.send("gtk_text_buffer_insert_with_tags_by_name "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6) + " "+Server.inString(p7) + " "+Server.inWidget(p8));
}
public static function textBufferApplyTagByName(p1:Widget,p2:String,p3:Widget,p4:Widget):Void {
Server.send("gtk_text_buffer_apply_tag_by_name "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4));
}
public static function textBufferRemoveTagByName(p1:Widget,p2:String,p3:Widget,p4:Widget):Void {
Server.send("gtk_text_buffer_remove_tag_by_name "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4));
}
public static function textBufferRemoveAllTags(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_text_buffer_remove_all_tags "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function textBufferGetTagTable(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_buffer_get_tag_table "+Server.inWidget(p1)));
}
public static function textBufferSelectRange(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_text_buffer_select_range "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function textBufferGetSelectionBound(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_buffer_get_selection_bound "+Server.inWidget(p1)));
}
public static function textBufferGetLineCount(p1:Widget):Int {
return Server.outInt(Server.send("gtk_text_buffer_get_line_count "+Server.inWidget(p1)));
}
public static function textBufferCreateMark(p1:Widget,p2:String,p3:Widget,p4:Bool):Widget {
return Server.outWidget(Server.send("gtk_text_buffer_create_mark "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3) + " "+Server.inBool(p4)));
}
public static function textBufferGetIterAtMark(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_text_buffer_get_iter_at_mark "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function textBufferGetIterAtLine(p1:Widget,p2:Widget,p3:Int):Void {
Server.send("gtk_text_buffer_get_iter_at_line "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3));
}
public static function textBufferDelete(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_text_buffer_delete "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function textBufferDeleteMark(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_buffer_delete_mark "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textBufferDeleteMarkByName(p1:Widget,p2:String):Void {
Server.send("gtk_text_buffer_delete_mark_by_name "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function textBufferPlaceCursor(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_buffer_place_cursor "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textBufferCopyClipboard(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_buffer_copy_clipboard "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textBufferCutClipboard(p1:Widget,p2:Widget,p3:Bool):Void {
Server.send("gtk_text_buffer_cut_clipboard "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inBool(p3));
}
public static function textBufferPasteClipboard(p1:Widget,p2:Widget,p3:Widget,p4:Bool):Void {
Server.send("gtk_text_buffer_paste_clipboard "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inBool(p4));
}
public static function scrolledWindowNew(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_scrolled_window_new "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function scrolledWindowSetPolicy(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_scrolled_window_set_policy "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function scrolledWindowSetShadowType(p1:Widget,p2:Int):Void {
Server.send("gtk_scrolled_window_set_shadow_type "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function scrolledWindowAddWithViewport(p1:Widget,p2:Widget):Void {
Server.send("gtk_scrolled_window_add_with_viewport "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function scrolledWindowGetHadjustment(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_scrolled_window_get_hadjustment "+Server.inWidget(p1)));
}
public static function scrolledWindowGetVadjustment(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_scrolled_window_get_vadjustment "+Server.inWidget(p1)));
}
public static function scrolledWindowSetHadjustment(p1:Widget,p2:Widget):Void {
Server.send("gtk_scrolled_window_set_hadjustment "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function scrolledWindowSetVadjustment(p1:Widget,p2:Widget):Void {
Server.send("gtk_scrolled_window_set_vadjustment "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function scrolledWindowSetPlacement(p1:Widget,p2:Int):Void {
Server.send("gtk_scrolled_window_set_placement "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textViewNewWithBuffer(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_view_new_with_buffer "+Server.inWidget(p1)));
}
public static function textViewSetWrapMode(p1:Widget,p2:Int):Void {
Server.send("gtk_text_view_set_wrap_mode "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textViewSetEditable(p1:Widget,p2:Bool):Void {
Server.send("gtk_text_view_set_editable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function textViewSetBorderWindowSize(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_text_view_set_border_window_size "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function textViewMoveMarkOnscreen(p1:Widget,p2:Widget):Bool {
return Server.outBool(Server.send("gtk_text_view_move_mark_onscreen "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function textViewScrollToMark(p1:Widget,p2:Widget,p3:Float,p4:Bool,p5:Float,p6:Float):Void {
Server.send("gtk_text_view_scroll_to_mark "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inFloat(p3) + " "+Server.inBool(p4) + " "+Server.inFloat(p5) + " "+Server.inFloat(p6));
}
public static function textViewScrollMarkOnscreen(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_view_scroll_mark_onscreen "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textViewSetPixelsInsideWrap(p1:Widget,p2:Int):Void {
Server.send("gtk_text_view_set_pixels_inside_wrap "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textViewGetPixelsInsideWrap(p1:Widget):Int {
return Server.outInt(Server.send("gtk_text_view_get_pixels_inside_wrap "+Server.inWidget(p1)));
}
public static function textViewSetPixelsAboveLines(p1:Widget,p2:Int):Void {
Server.send("gtk_text_view_set_pixels_above_lines "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textViewGetPixelsAboveLines(p1:Widget):Int {
return Server.outInt(Server.send("gtk_text_view_get_pixels_above_lines "+Server.inWidget(p1)));
}
public static function textViewSetCursorVisible(p1:Widget,p2:Bool):Void {
Server.send("gtk_text_view_set_cursor_visible "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function textViewWindowToBufferCoords(p1:Widget,p2:Int,p3:Int,p4:Int,p5:Widget,p6:Widget):Void {
Server.send("gtk_text_view_window_to_buffer_coords "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inWidget(p5) + " "+Server.inWidget(p6));
}
public static function textIterForwardSearch(p1:Widget,p2:String,p3:Int,p4:Widget,p5:Widget,p6:Widget):Bool {
return Server.outBool(Server.send("gtk_text_iter_forward_search "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inWidget(p4) + " "+Server.inWidget(p5) + " "+Server.inWidget(p6)));
}
public static function textIterForwardVisibleCursorPosition(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_text_iter_forward_visible_cursor_position "+Server.inWidget(p1)));
}
public static function textIterForwardToLineEnd(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_text_iter_forward_to_line_end "+Server.inWidget(p1)));
}
public static function textIterSetLine(p1:Widget,p2:Int):Void {
Server.send("gtk_text_iter_set_line "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textIterSetLineOffset(p1:Widget,p2:Int):Void {
Server.send("gtk_text_iter_set_line_offset "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textIterSetLineIndex(p1:Widget,p2:Int):Void {
Server.send("gtk_text_iter_set_line_index "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function textIterGetText(p1:Widget,p2:Widget):String {
return Server.outString(Server.send("gtk_text_iter_get_text "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function textIterGetLine(p1:Widget):Int {
return Server.outInt(Server.send("gtk_text_iter_get_line "+Server.inWidget(p1)));
}
public static function textViewNew():Widget {
return Server.outWidget(Server.send("gtk_text_view_new "));
}
public static function textViewGetBuffer(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_view_get_buffer "+Server.inWidget(p1)));
}
public static function textTagTableRemove(p1:Widget,p2:Widget):Void {
Server.send("gtk_text_tag_table_remove "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function textNew(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_text_new "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function textSetEditable(p1:Widget,p2:Bool):Void {
Server.send("gtk_text_set_editable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function textInsert(p1:Widget,p2:Widget,p3:Widget,p4:Widget,p5:String,p6:Int):Void {
Server.send("gtk_text_insert "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4) + " "+Server.inString(p5) + " "+Server.inInt(p6));
}
public static function textSetAdjustments(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_text_set_adjustments "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function textGetLength(p1:Widget):Int {
return Server.outInt(Server.send("gtk_text_get_length "+Server.inWidget(p1)));
}
public static function textSetWordWrap(p1:Widget,p2:Bool):Void {
Server.send("gtk_text_set_word_wrap "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function textBackwardDelete(p1:Widget,p2:Int):Bool {
return Server.outBool(Server.send("gtk_text_backward_delete "+Server.inWidget(p1) + " "+Server.inInt(p2)));
}
public static function textForwardDelete(p1:Widget,p2:Int):Bool {
return Server.outBool(Server.send("gtk_text_forward_delete "+Server.inWidget(p1) + " "+Server.inInt(p2)));
}
public static function textSetPoint(p1:Widget,p2:Int):Void {
Server.send("gtk_text_set_point "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function imageNew():Widget {
return Server.outWidget(Server.send("gtk_image_new "));
}
public static function imageNewFromPixmap(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_image_new_from_pixmap "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function imageNewFromPixbuf(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_image_new_from_pixbuf "+Server.inWidget(p1)));
}
public static function imageSetFromPixbuf(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_image_set_from_pixbuf "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function imageSetFromPixmap(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_image_set_from_pixmap "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function imageSet(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_image_set "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function imageSetFromFile(p1:Widget,p2:String):Void {
Server.send("gtk_image_set_from_file "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function imageNewFromFile(p1:String):Widget {
return Server.outWidget(Server.send("gtk_image_new_from_file "+Server.inString(p1)));
}
public static function imageNewFromStock(p1:String,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_image_new_from_stock "+Server.inString(p1) + " "+Server.inInt(p2)));
}
public static function imageMenuItemNewFromStock(p1:String,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_image_menu_item_new_from_stock "+Server.inString(p1) + " "+Server.inWidget(p2)));
}
public static function pixmapNew(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_pixmap_new "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function drawingAreaNew():Widget {
return Server.outWidget(Server.send("gtk_drawing_area_new "));
}
public static function widgetQueueDraw(p1:Widget):Void {
Server.send("gtk_widget_queue_draw "+Server.inWidget(p1));
}
public static function widgetGetColormap(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_widget_get_colormap "+Server.inWidget(p1)));
}
public static function widgetGetParentWindow(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_widget_get_parent_window "+Server.inWidget(p1)));
}
public static function widgetCreatePangoLayout(p1:Widget,p2:String):Widget {
return Server.outWidget(Server.send("gtk_widget_create_pango_layout "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function vscrollbarNew(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_vscrollbar_new "+Server.inWidget(p1)));
}
public static function labelNew(p1:String):Widget {
return Server.outWidget(Server.send("gtk_label_new "+Server.inString(p1)));
}
public static function labelSetText(p1:Widget,p2:String):Void {
Server.send("gtk_label_set_text "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function labelGetText(p1:Widget):String {
return Server.outString(Server.send("gtk_label_get_text "+Server.inWidget(p1)));
}
public static function labelSetLineWrap(p1:Widget,p2:Bool):Void {
Server.send("gtk_label_set_line_wrap "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function labelSetSelectable(p1:Widget,p2:Bool):Void {
Server.send("gtk_label_set_selectable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function labelSetUseMarkup(p1:Widget,p2:Bool):Void {
Server.send("gtk_label_set_use_markup "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function labelSetJustify(p1:Widget,p2:Int):Void {
Server.send("gtk_label_set_justify "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function labelGetWidthChars(p1:Widget):Int {
return Server.outInt(Server.send("gtk_label_get_width_chars "+Server.inWidget(p1)));
}
public static function labelGetMaxWidthChars(p1:Widget):Int {
return Server.outInt(Server.send("gtk_label_get_max_width_chars "+Server.inWidget(p1)));
}
public static function labelSetMarkupWithMnemonic(p1:Widget,p2:String):Void {
Server.send("gtk_label_set_markup_with_mnemonic "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function frameNew(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_frame_new "+Server.inWidget(p1)));
}
public static function frameSetLabelAlign(p1:Widget,p2:Float,p3:Float):Void {
Server.send("gtk_frame_set_label_align "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3));
}
public static function frameSetLabel(p1:Widget,p2:String):Void {
Server.send("gtk_frame_set_label "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function frameGetLabel(p1:Widget):String {
return Server.outString(Server.send("gtk_frame_get_label "+Server.inWidget(p1)));
}
public static function frameGetLabelWidget(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_frame_get_label_widget "+Server.inWidget(p1)));
}
public static function aspectFrameNew(p1:String,p2:Float,p3:Float,p4:Float,p5:Bool):Widget {
return Server.outWidget(Server.send("gtk_aspect_frame_new "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inBool(p5)));
}
public static function aspectFrameSet(p1:Widget,p2:Float,p3:Float,p4:Float,p5:Bool):Void {
Server.send("gtk_aspect_frame_set "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inBool(p5));
}
public static function frameSetShadowType(p1:Widget,p2:Int):Void {
Server.send("gtk_frame_set_shadow_type "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function radioButtonNew(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_radio_button_new "+Server.inWidget(p1)));
}
public static function radioButtonNewWithLabel(p1:Widget,p2:String):Widget {
return Server.outWidget(Server.send("gtk_radio_button_new_with_label "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function radioButtonNewFromWidget(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_radio_button_new_from_widget "+Server.inWidget(p1)));
}
public static function radioButtonNewWithLabelFromWidget(p1:Widget,p2:String):Widget {
return Server.outWidget(Server.send("gtk_radio_button_new_with_label_from_widget "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function notebookNew():Widget {
return Server.outWidget(Server.send("gtk_notebook_new "));
}
public static function notebookSetTabPos(p1:Widget,p2:Int):Void {
Server.send("gtk_notebook_set_tab_pos "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function notebookPopupEnable(p1:Widget):Void {
Server.send("gtk_notebook_popup_enable "+Server.inWidget(p1));
}
public static function notebookPopupDisable(p1:Widget):Void {
Server.send("gtk_notebook_popup_disable "+Server.inWidget(p1));
}
public static function notebookGetNPages(p1:Widget):Int {
return Server.outInt(Server.send("gtk_notebook_get_n_pages "+Server.inWidget(p1)));
}
public static function notebookGetNthPage(p1:Widget,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_notebook_get_nth_page "+Server.inWidget(p1) + " "+Server.inInt(p2)));
}
public static function notebookAppendPage(p1:Widget,p2:Widget,p3:Widget):Int {
return Server.outInt(Server.send("gtk_notebook_append_page "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3)));
}
public static function notebookInsertPage(p1:Widget,p2:Widget,p3:Widget,p4:Int):Int {
return Server.outInt(Server.send("gtk_notebook_insert_page "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inInt(p4)));
}
public static function notebookRemovePage(p1:Widget,p2:Int):Void {
Server.send("gtk_notebook_remove_page "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function notebookGetCurrentPage(p1:Widget):Int {
return Server.outInt(Server.send("gtk_notebook_get_current_page "+Server.inWidget(p1)));
}
public static function notebookGetMenuLabel(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_notebook_get_menu_label "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function notebookSetPage(p1:Widget,p2:Int):Void {
Server.send("gtk_notebook_set_page "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function notebookSetCurrentPage(p1:Widget,p2:Int):Void {
Server.send("gtk_notebook_set_current_page "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function notebookSetTabLabelText(p1:Widget,p2:Widget,p3:String):Void {
Server.send("gtk_notebook_set_tab_label_text "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3));
}
public static function notebookSetScrollable(p1:Widget,p2:Int):Void {
Server.send("gtk_notebook_set_scrollable "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function notebookSetTabReorderable(p1:Widget,p2:Widget,p3:Bool):Void {
Server.send("gtk_notebook_set_tab_reorderable "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inBool(p3));
}
public static function adjustmentNew(p1:Float,p2:Float,p3:Float,p4:Float,p5:Float,p6:Float):Widget {
return Server.outWidget(Server.send("gtk_adjustment_new "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inFloat(p5) + " "+Server.inFloat(p6)));
}
public static function adjustmentGetValue(p1:Widget):Float {
return Server.outFloat(Server.send("gtk_adjustment_get_value "+Server.inWidget(p1)));
}
public static function adjustmentSetValue(p1:Widget,p2:Float):Void {
Server.send("gtk_adjustment_set_value "+Server.inWidget(p1) + " "+Server.inFloat(p2));
}
public static function adjustmentClampPage(p1:Widget,p2:Float,p3:Float):Void {
Server.send("gtk_adjustment_clamp_page "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3));
}
public static function rangeGetAdjustment(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_range_get_adjustment "+Server.inWidget(p1)));
}
public static function rangeGetValue(p1:Widget):Float {
return Server.outFloat(Server.send("gtk_range_get_value "+Server.inWidget(p1)));
}
public static function rangeSetValue(p1:Widget,p2:Float):Void {
Server.send("gtk_range_set_value "+Server.inWidget(p1) + " "+Server.inFloat(p2));
}
public static function scaleSetDrawValue(p1:Widget,p2:Bool):Void {
Server.send("gtk_scale_set_draw_value "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function scaleSetValuePos(p1:Widget,p2:Int):Void {
Server.send("gtk_scale_set_value_pos "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function hscaleNew(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_hscale_new "+Server.inWidget(p1)));
}
public static function hscaleNewWithRange(p1:Float,p2:Float,p3:Float):Widget {
return Server.outWidget(Server.send("gtk_hscale_new_with_range "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3)));
}
public static function vscaleNewWithRange(p1:Float,p2:Float,p3:Float):Widget {
return Server.outWidget(Server.send("gtk_vscale_new_with_range "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3)));
}
public static function spinButtonNew(p1:Widget,p2:Float,p3:Int):Widget {
return Server.outWidget(Server.send("gtk_spin_button_new "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inInt(p3)));
}
public static function spinButtonNewWithRange(p1:Float,p2:Float,p3:Float):Widget {
return Server.outWidget(Server.send("gtk_spin_button_new_with_range "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3)));
}
public static function spinButtonGetValueAsInt(p1:Widget):Int {
return Server.outInt(Server.send("gtk_spin_button_get_value_as_int "+Server.inWidget(p1)));
}
public static function spinButtonGetValue(p1:Widget):Float {
return Server.outFloat(Server.send("gtk_spin_button_get_value "+Server.inWidget(p1)));
}
public static function spinButtonSetWrap(p1:Widget,p2:Bool):Void {
Server.send("gtk_spin_button_set_wrap "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function spinButtonSetValue(p1:Widget,p2:Float):Void {
Server.send("gtk_spin_button_set_value "+Server.inWidget(p1) + " "+Server.inFloat(p2));
}
public static function arrowNew(p1:Int,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_arrow_new "+Server.inInt(p1) + " "+Server.inInt(p2)));
}
public static function fileChooserDialogNew(p1:String,p2:Widget,p3:Int,p4:String,p5:Int,p6:String,p7:Int,p8:Widget):Widget {
return Server.outWidget(Server.send("gtk_file_chooser_dialog_new "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inInt(p5) + " "+Server.inString(p6) + " "+Server.inInt(p7) + " "+Server.inWidget(p8)));
}
public static function fileChooserWidgetNew(p1:Int):Widget {
return Server.outWidget(Server.send("gtk_file_chooser_widget_new "+Server.inInt(p1)));
}
public static function fileChooserSetLocalOnly(p1:Widget,p2:Bool):Void {
Server.send("gtk_file_chooser_set_local_only "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function dialogRun(p1:Widget):Int {
return Server.outInt(Server.send("gtk_dialog_run "+Server.inWidget(p1)));
}
public static function fileChooserGetFilename(p1:Widget):String {
return Server.outString(Server.send("gtk_file_chooser_get_filename "+Server.inWidget(p1)));
}
public static function fileChooserGetUri(p1:Widget):String {
return Server.outString(Server.send("gtk_file_chooser_get_uri "+Server.inWidget(p1)));
}
public static function fileChooserGetCurrentFolder(p1:Widget):String {
return Server.outString(Server.send("gtk_file_chooser_get_current_folder "+Server.inWidget(p1)));
}
public static function fileChooserSetFilename(p1:Widget,p2:String):Bool {
return Server.outBool(Server.send("gtk_file_chooser_set_filename "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function fileFilterNew():Widget {
return Server.outWidget(Server.send("gtk_file_filter_new "));
}
public static function fileFilterAddPattern(p1:Widget,p2:String):Void {
Server.send("gtk_file_filter_add_pattern "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function fileFilterSetName(p1:Widget,p2:String):Void {
Server.send("gtk_file_filter_set_name "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function fileChooserAddFilter(p1:Widget,p2:Widget):Void {
Server.send("gtk_file_chooser_add_filter "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function fileChooserSetSelectMultiple(p1:Widget,p2:Bool):Void {
Server.send("gtk_file_chooser_set_select_multiple "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function fontSelectionDialogNew(p1:String):Widget {
return Server.outWidget(Server.send("gtk_font_selection_dialog_new "+Server.inString(p1)));
}
public static function fontSelectionDialogGetFontName(p1:Widget):String {
return Server.outString(Server.send("gtk_font_selection_dialog_get_font_name "+Server.inWidget(p1)));
}
public static function fontSelectionNew():Widget {
return Server.outWidget(Server.send("gtk_font_selection_new "));
}
public static function fontSelectionGetFontName(p1:Widget):String {
return Server.outString(Server.send("gtk_font_selection_get_font_name "+Server.inWidget(p1)));
}
public static function fontSelectionSetFontName(p1:Widget,p2:String):Bool {
return Server.outBool(Server.send("gtk_font_selection_set_font_name "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function colorSelectionNew():Widget {
return Server.outWidget(Server.send("gtk_color_selection_new "));
}
public static function colorSelectionSetHasOpacityControl(p1:Widget,p2:Bool):Void {
Server.send("gtk_color_selection_set_has_opacity_control "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function colorSelectionSetCurrentColor(p1:Widget,p2:String):Void {
Server.send("gtk_color_selection_set_current_color "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function colorSelectionGetCurrentColor(p1:Widget,p2:Widget):Void {
Server.send("gtk_color_selection_get_current_color "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function colorSelectionSetColor(p1:Widget,p2:String):Void {
Server.send("gtk_color_selection_set_color "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function menuBarNew():Widget {
return Server.outWidget(Server.send("gtk_menu_bar_new "));
}
public static function menuShellAppend(p1:Widget,p2:Widget):Void {
Server.send("gtk_menu_shell_append "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function menuItemNew():Widget {
return Server.outWidget(Server.send("gtk_menu_item_new "));
}
public static function menuItemNewWithLabel(p1:String):Widget {
return Server.outWidget(Server.send("gtk_menu_item_new_with_label "+Server.inString(p1)));
}
public static function menuItemNewWithMnemonic(p1:String):Widget {
return Server.outWidget(Server.send("gtk_menu_item_new_with_mnemonic "+Server.inString(p1)));
}
public static function tearoffMenuItemNew():Widget {
return Server.outWidget(Server.send("gtk_tearoff_menu_item_new "));
}
public static function separatorMenuItemNew():Widget {
return Server.outWidget(Server.send("gtk_separator_menu_item_new "));
}
public static function menuNew():Widget {
return Server.outWidget(Server.send("gtk_menu_new "));
}
public static function menuSetTitle(p1:Widget,p2:String):Void {
Server.send("gtk_menu_set_title "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function menuItemSetRightJustified(p1:Widget,p2:Bool):Void {
Server.send("gtk_menu_item_set_right_justified "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function menuItemSetSubmenu(p1:Widget,p2:Widget):Void {
Server.send("gtk_menu_item_set_submenu "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function checkMenuItemNewWithLabel(p1:String):Widget {
return Server.outWidget(Server.send("gtk_check_menu_item_new_with_label "+Server.inString(p1)));
}
public static function checkMenuItemNewWithMnemonic(p1:String):Widget {
return Server.outWidget(Server.send("gtk_check_menu_item_new_with_mnemonic "+Server.inString(p1)));
}
public static function checkMenuItemGetActive(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_check_menu_item_get_active "+Server.inWidget(p1)));
}
public static function checkMenuItemSetActive(p1:Widget,p2:Bool):Void {
Server.send("gtk_check_menu_item_set_active "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function menuPopup(p1:Widget,p2:Widget,p3:Widget,p4:Widget,p5:Widget,p6:Int,p7:Int):Void {
Server.send("gtk_menu_popup "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4) + " "+Server.inWidget(p5) + " "+Server.inInt(p6) + " "+Server.inInt(p7));
}
public static function progressBarNew():Widget {
return Server.outWidget(Server.send("gtk_progress_bar_new "));
}
public static function progressBarSetText(p1:Widget,p2:String):Void {
Server.send("gtk_progress_bar_set_text "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function progressBarSetFraction(p1:Widget,p2:Float):Void {
Server.send("gtk_progress_bar_set_fraction "+Server.inWidget(p1) + " "+Server.inFloat(p2));
}
public static function progressBarPulse(p1:Widget):Void {
Server.send("gtk_progress_bar_pulse "+Server.inWidget(p1));
}
public static function progressBarSetPulseStep(p1:Widget,p2:Float):Void {
Server.send("gtk_progress_bar_set_pulse_step "+Server.inWidget(p1) + " "+Server.inFloat(p2));
}
public static function progressConfigure(p1:Widget,p2:Float,p3:Float,p4:Float):Void {
Server.send("gtk_progress_configure "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4));
}
public static function progressSetValue(p1:Widget,p2:Float):Void {
Server.send("gtk_progress_set_value "+Server.inWidget(p1) + " "+Server.inFloat(p2));
}
public static function statusbarNew():Widget {
return Server.outWidget(Server.send("gtk_statusbar_new "));
}
public static function statusbarGetContextId(p1:Widget,p2:String):Int {
return Server.outInt(Server.send("gtk_statusbar_get_context_id "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function statusbarPush(p1:Widget,p2:Int,p3:String):Int {
return Server.outInt(Server.send("gtk_statusbar_push "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3)));
}
public static function statusbarPop(p1:Widget,p2:Int):Void {
Server.send("gtk_statusbar_pop "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function statusbarRemove(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_statusbar_remove "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function statusbarSetHasResizeGrip(p1:Widget,p2:Bool):Void {
Server.send("gtk_statusbar_set_has_resize_grip "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function eventBoxNew():Widget {
return Server.outWidget(Server.send("gtk_event_box_new "));
}
public static function comboBoxNewText():Widget {
return Server.outWidget(Server.send("gtk_combo_box_new_text "));
}
public static function comboBoxAppendText(p1:Widget,p2:String):Void {
Server.send("gtk_combo_box_append_text "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function comboBoxInsertText(p1:Widget,p2:Int,p3:String):Void {
Server.send("gtk_combo_box_insert_text "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function comboBoxPrependText(p1:Widget,p2:String):Void {
Server.send("gtk_combo_box_prepend_text "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function comboBoxRemoveText(p1:Widget,p2:Int):Void {
Server.send("gtk_combo_box_remove_text "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function comboBoxGetActive(p1:Widget):Int {
return Server.outInt(Server.send("gtk_combo_box_get_active "+Server.inWidget(p1)));
}
public static function comboBoxSetActive(p1:Widget,p2:Int):Void {
Server.send("gtk_combo_box_set_active "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function comboBoxGetActiveText(p1:Widget):String {
return Server.outString(Server.send("gtk_combo_box_get_active_text "+Server.inWidget(p1)));
}
public static function vseparatorNew():Widget {
return Server.outWidget(Server.send("gtk_vseparator_new "));
}
public static function hseparatorNew():Widget {
return Server.outWidget(Server.send("gtk_hseparator_new "));
}
public static function editableCopyClipboard(p1:Widget):Void {
Server.send("gtk_editable_copy_clipboard "+Server.inWidget(p1));
}
public static function editableCutClipboard(p1:Widget):Void {
Server.send("gtk_editable_cut_clipboard "+Server.inWidget(p1));
}
public static function editablePasteClipboard(p1:Widget):Void {
Server.send("gtk_editable_paste_clipboard "+Server.inWidget(p1));
}
public static function clipboardGet(p1:Int):Widget {
return Server.outWidget(Server.send("gtk_clipboard_get "+Server.inInt(p1)));
}
public static function clipboardSetText(p1:Widget,p2:String,p3:Int):Void {
Server.send("gtk_clipboard_set_text "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function clipboardWaitForText(p1:Widget):String {
return Server.outString(Server.send("gtk_clipboard_wait_for_text "+Server.inWidget(p1)));
}
public static function clistNew(p1:Int):Widget {
return Server.outWidget(Server.send("gtk_clist_new "+Server.inInt(p1)));
}
public static function clistSetColumnTitle(p1:Widget,p2:Int,p3:String):Void {
Server.send("gtk_clist_set_column_title "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function clistColumnTitlesShow(p1:Widget):Void {
Server.send("gtk_clist_column_titles_show "+Server.inWidget(p1));
}
public static function clistAppend(p1:Widget,p2:Widget):Int {
return Server.outInt(Server.send("gtk_clist_append "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function clistSetText(p1:Widget,p2:Int,p3:Int,p4:String):Void {
Server.send("gtk_clist_set_text "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4));
}
public static function fixedNew():Widget {
return Server.outWidget(Server.send("gtk_fixed_new "));
}
public static function fixedPut(p1:Widget,p2:Widget,p3:Int,p4:Int):Void {
Server.send("gtk_fixed_put "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function fixedMove(p1:Widget,p2:Widget,p3:Int,p4:Int):Void {
Server.send("gtk_fixed_move "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function listStoreNew(p1:Int,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_list_store_new "+Server.inInt(p1) + " "+Server.inInt(p2)));
}
public static function listStoreAppend(p1:Widget,p2:Widget):Void {
Server.send("gtk_list_store_append "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function listStoreSet(p1:Widget,p2:Widget,p3:Int,p4:String,p5:Int):Void {
Server.send("gtk_list_store_set "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inInt(p5));
}
public static function listStoreSetValue(p1:Widget,p2:Widget,p3:Int,p4:String):Void {
Server.send("gtk_list_store_set_value "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4));
}
public static function listStoreClear(p1:Widget):Void {
Server.send("gtk_list_store_clear "+Server.inWidget(p1));
}
public static function listStoreRemove(p1:Widget,p2:Widget):Bool {
return Server.outBool(Server.send("gtk_list_store_remove "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function listStoreMoveBefore(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_list_store_move_before "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function listStoreMoveAfter(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_list_store_move_after "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function listStoreInsert(p1:Widget,p2:Widget,p3:Int):Void {
Server.send("gtk_list_store_insert "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3));
}
public static function listStoreInsertWithValues(p1:Widget,p2:Widget,p3:Int,p4:Int,p5:String,p6:Int):Void {
Server.send("gtk_list_store_insert_with_values "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inInt(p6));
}
public static function cellRendererTextNew():Widget {
return Server.outWidget(Server.send("gtk_cell_renderer_text_new "));
}
public static function treeViewNew():Widget {
return Server.outWidget(Server.send("gtk_tree_view_new "));
}
public static function treeViewColumnSetTitle(p1:Widget,p2:String):Void {
Server.send("gtk_tree_view_column_set_title "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function treeViewSetModel(p1:Widget,p2:Widget):Void {
Server.send("gtk_tree_view_set_model "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function treeViewNewWithModel(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_tree_view_new_with_model "+Server.inWidget(p1)));
}
public static function treeViewColumnNew():Widget {
return Server.outWidget(Server.send("gtk_tree_view_column_new "));
}
public static function treeViewColumnNewWithAttributes(p1:String,p2:Widget,p3:String,p4:Int,p5:Widget):Widget {
return Server.outWidget(Server.send("gtk_tree_view_column_new_with_attributes "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inWidget(p5)));
}
public static function treeViewColumnPackStart(p1:Widget,p2:Widget,p3:Bool):Void {
Server.send("gtk_tree_view_column_pack_start "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inBool(p3));
}
public static function treeViewAppendColumn(p1:Widget,p2:Widget):Void {
Server.send("gtk_tree_view_append_column "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function treeViewSetHeadersVisible(p1:Widget,p2:Bool):Void {
Server.send("gtk_tree_view_set_headers_visible "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function treeViewSetHeadersClickable(p1:Widget,p2:Bool):Void {
Server.send("gtk_tree_view_set_headers_clickable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function treeViewGetSelection(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_tree_view_get_selection "+Server.inWidget(p1)));
}
public static function treeViewGetHadjustment(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_tree_view_get_hadjustment "+Server.inWidget(p1)));
}
public static function treeViewGetVadjustment(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_tree_view_get_vadjustment "+Server.inWidget(p1)));
}
public static function treeViewColumnSetResizable(p1:Widget,p2:Bool):Void {
Server.send("gtk_tree_view_column_set_resizable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function treeViewColumnSetClickable(p1:Widget,p2:Bool):Void {
Server.send("gtk_tree_view_column_set_clickable "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function treeViewScrollToCell(p1:Widget,p2:Widget,p3:Widget,p4:Bool,p5:Float,p6:Float):Void {
Server.send("gtk_tree_view_scroll_to_cell "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inBool(p4) + " "+Server.inFloat(p5) + " "+Server.inFloat(p6));
}
public static function treeViewSetGridLines(p1:Widget,p2:Int):Void {
Server.send("gtk_tree_view_set_grid_lines "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function treeSelectionGetSelected(p1:Widget,p2:Widget,p3:Widget):Bool {
return Server.outBool(Server.send("gtk_tree_selection_get_selected "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3)));
}
public static function treeSelectionGetTreeView(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_tree_selection_get_tree_view "+Server.inWidget(p1)));
}
public static function treeSelectionSelectIter(p1:Widget,p2:Widget):Void {
Server.send("gtk_tree_selection_select_iter "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function treeSelectionSelectPath(p1:Widget,p2:Widget):Void {
Server.send("gtk_tree_selection_select_path "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function treeSelectionPathIsSelected(p1:Widget,p2:Widget):Bool {
return Server.outBool(Server.send("gtk_tree_selection_path_is_selected "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function treeSelectionSetMode(p1:Widget,p2:Int):Void {
Server.send("gtk_tree_selection_set_mode "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function treeModelGet(p1:Widget,p2:Widget,p3:Int,p4:Dynamic,p5:Int):Void {
Server.send("gtk_tree_model_get "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inDynamic(p4) + " "+Server.inInt(p5));
}
public static function treeModelGetIter(p1:Widget,p2:Widget,p3:Widget):Bool {
return Server.outBool(Server.send("gtk_tree_model_get_iter "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3)));
}
public static function treeModelGetStringFromIter(p1:Widget,p2:Widget):String {
return Server.outString(Server.send("gtk_tree_model_get_string_from_iter "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function treeModelGetIterFirst(p1:Widget,p2:Widget):Void {
Server.send("gtk_tree_model_get_iter_first "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function treeModelIterNext(p1:Widget,p2:Widget):Bool {
return Server.outBool(Server.send("gtk_tree_model_iter_next "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function treePathNewFromString(p1:String):Widget {
return Server.outWidget(Server.send("gtk_tree_path_new_from_string "+Server.inString(p1)));
}
public static function treePathFree(p1:Widget):Void {
Server.send("gtk_tree_path_free "+Server.inWidget(p1));
}
public static function treePathPrev(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_tree_path_prev "+Server.inWidget(p1)));
}
public static function treePathNext(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_tree_path_next "+Server.inWidget(p1)));
}
public static function treeSortableSetSortColumnId(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_tree_sortable_set_sort_column_id "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function treeStoreAppend(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_tree_store_append "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function treeStoreNew(p1:Int,p2:Int,p3:Int):Widget {
return Server.outWidget(Server.send("gtk_tree_store_new "+Server.inInt(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3)));
}
public static function treeStoreSet(p1:Widget,p2:Widget,p3:Int,p4:String,p5:Int,p6:String,p7:Int):Void {
Server.send("gtk_tree_store_set "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inInt(p5) + " "+Server.inString(p6) + " "+Server.inInt(p7));
}
public static function expanderNew(p1:String):Widget {
return Server.outWidget(Server.send("gtk_expander_new "+Server.inString(p1)));
}
public static function expanderNewWithMnemonic(p1:String):Widget {
return Server.outWidget(Server.send("gtk_expander_new_with_mnemonic "+Server.inString(p1)));
}
public static function expanderSetExpanded(p1:Widget,p2:Bool):Void {
Server.send("gtk_expander_set_expanded "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function expanderGetExpanded(p1:Widget):Bool {
return Server.outBool(Server.send("gtk_expander_get_expanded "+Server.inWidget(p1)));
}
public static function expanderSetSpacing(p1:Widget,p2:Int):Void {
Server.send("gtk_expander_set_spacing "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function expanderGetSpacing(p1:Widget):Int {
return Server.outInt(Server.send("gtk_expander_get_spacing "+Server.inWidget(p1)));
}
public static function tooltipsNew():Widget {
return Server.outWidget(Server.send("gtk_tooltips_new "));
}
public static function tooltipsEnable(p1:Widget):Void {
Server.send("gtk_tooltips_enable "+Server.inWidget(p1));
}
public static function tooltipsDisable(p1:Widget):Void {
Server.send("gtk_tooltips_disable "+Server.inWidget(p1));
}
public static function tooltipsSetTip(p1:Widget,p2:Widget,p3:String,p4:String):Void {
Server.send("gtk_tooltips_set_tip "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3) + " "+Server.inString(p4));
}
public static function tooltipsForceWindow(p1:Widget):Void {
Server.send("gtk_tooltips_force_window "+Server.inWidget(p1));
}
public static function widgetSetTooltipText(p1:Widget,p2:String):Void {
Server.send("gtk_widget_set_tooltip_text "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function calendarGetDate(p1:Widget,p2:Int,p3:Int,p4:Int):Void {
Server.send("gtk_calendar_get_date "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function init(p1:Widget,p2:Widget):Void {
Server.send("gtk_init "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function widgetShow(p1:Widget):Void {
Server.send("gtk_widget_show "+Server.inWidget(p1));
}
public static function widgetShowAll(p1:Widget):Void {
Server.send("gtk_widget_show_all "+Server.inWidget(p1));
}
public static function widgetRealize(p1:Widget):Void {
Server.send("gtk_widget_realize "+Server.inWidget(p1));
}
public static function widgetUnrealize(p1:Widget):Void {
Server.send("gtk_widget_unrealize "+Server.inWidget(p1));
}
public static function widgetHide(p1:Widget):Void {
Server.send("gtk_widget_hide "+Server.inWidget(p1));
}
public static function widgetDestroy(p1:Widget):Void {
Server.send("gtk_widget_destroy "+Server.inWidget(p1));
}
public static function widgetGrabFocus(p1:Widget):Void {
Server.send("gtk_widget_grab_focus "+Server.inWidget(p1));
}
public static function widgetSetSizeRequest(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_widget_set_size_request "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function widgetSizeRequest(p1:Widget,p2:Widget):Void {
Server.send("gtk_widget_size_request "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function widgetSetUsize(p1:Widget,p2:Int,p3:Int):Void {
Server.send("gtk_widget_set_usize "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function widgetModifyBase(p1:Widget,p2:Int,p3:Widget):Void {
Server.send("gtk_widget_modify_base "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3));
}
public static function widgetModifyText(p1:Widget,p2:Int,p3:Widget):Void {
Server.send("gtk_widget_modify_text "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3));
}
public static function widgetModifyBg(p1:Widget,p2:Int,p3:Widget):Void {
Server.send("gtk_widget_modify_bg "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3));
}
public static function widgetModifyFg(p1:Widget,p2:Int,p3:Widget):Void {
Server.send("gtk_widget_modify_fg "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3));
}
public static function widgetModifyFont(p1:Widget,p2:Widget):Void {
Server.send("gtk_widget_modify_font "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function widgetSetSensitive(p1:Widget,p2:Bool):Void {
Server.send("gtk_widget_set_sensitive "+Server.inWidget(p1) + " "+Server.inBool(p2));
}
public static function widgetAddAccelerator(p1:Widget,p2:String,p3:Widget,p4:Int,p5:Int,p6:Int):Void {
Server.send("gtk_widget_add_accelerator "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5) + " "+Server.inInt(p6));
}
public static function widgetGetParent(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_widget_get_parent "+Server.inWidget(p1)));
}
public static function widgetSetName(p1:Widget,p2:String):Void {
Server.send("gtk_widget_set_name "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function widgetGetSizeRequest(p1:Widget,p2:Widget,p3:Widget):Void {
Server.send("gtk_widget_get_size_request "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3));
}
public static function widgetAddEvents(p1:Widget,p2:Int):Void {
Server.send("gtk_widget_add_events "+Server.inWidget(p1) + " "+Server.inInt(p2));
}
public static function settingsGetDefault():Widget {
return Server.outWidget(Server.send("gtk_settings_get_default "));
}
public static function miscSetAlignment(p1:Widget,p2:Float,p3:Float):Void {
Server.send("gtk_misc_set_alignment "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3));
}
public static function main():Void {
Server.send("gtk_main ");
}
public static function mainIteration():Bool {
return Server.outBool(Server.send("gtk_main_iteration "));
}
public static function mainIterationDo(p1:Bool):Bool {
return Server.outBool(Server.send("gtk_main_iteration_do "+Server.inBool(p1)));
}
public static function eventsPending():Bool {
return Server.outBool(Server.send("gtk_events_pending "));
}
public static function exit(p1:Int):Void {
Server.send("gtk_exit "+Server.inInt(p1));
}
public static function mainQuit():Void {
Server.send("gtk_main_quit ");
}
public static function rcParse(p1:String):Void {
Server.send("gtk_rc_parse "+Server.inString(p1));
}
public static function rcParseString(p1:String):Void {
Server.send("gtk_rc_parse_string "+Server.inString(p1));
}
public static function rcReparseAll():Bool {
return Server.outBool(Server.send("gtk_rc_reparse_all "));
}
public static function rcResetStyles(p1:Widget):Void {
Server.send("gtk_rc_reset_styles "+Server.inWidget(p1));
}
public static function rcAddDefaultFile(p1:String):Void {
Server.send("gtk_rc_add_default_file "+Server.inString(p1));
}
public static function checkVersion(p1:Int,p2:Int,p3:Int):String {
return Server.outString(Server.send("gtk_check_version "+Server.inInt(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3)));
}
public static function dragSourceSet(p1:Widget,p2:Int,p3:Widget,p4:Int,p5:Int):Void {
Server.send("gtk_drag_source_set "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5));
}
public static function dragDestSet(p1:Widget,p2:Int,p3:Widget,p4:Int,p5:Int):Void {
Server.send("gtk_drag_dest_set "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inWidget(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5));
}
public static function dragFinish(p1:Widget,p2:Bool,p3:Bool,p4:Int):Void {
Server.send("gtk_drag_finish "+Server.inWidget(p1) + " "+Server.inBool(p2) + " "+Server.inBool(p3) + " "+Server.inInt(p4));
}
public static function dragSetIconStock(p1:Widget,p2:String,p3:Int,p4:Int):Void {
Server.send("gtk_drag_set_icon_stock "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function getCurrentEventTime():Int {
return Server.outInt(Server.send("gtk_get_current_event_time "));
}
public static function signalEmitByName(p1:Widget,p2:String):Void {
Server.send("gtk_signal_emit_by_name "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function signalConnectWhileAlive(p1:Widget,p2:String,p3:Dynamic,p4:Dynamic,p5:Widget):Void {
Server.send("gtk_signal_connect_while_alive "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inDynamic(p3) + " "+Server.inDynamic(p4) + " "+Server.inWidget(p5));
}
public static function invisibleNew():Widget {
return Server.outWidget(Server.send("gtk_invisible_new "));
}
public static function targetListNew(p1:Widget,p2:Int):Widget {
return Server.outWidget(Server.send("gtk_target_list_new "+Server.inWidget(p1) + " "+Server.inInt(p2)));
}
public static function targetListAdd(p1:Widget,p2:Widget,p3:Int,p4:Int):Void {
Server.send("gtk_target_list_add "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function targetTableNewFromList(p1:Widget,p2:Widget):Widget {
return Server.outWidget(Server.send("gtk_target_table_new_from_list "+Server.inWidget(p1) + " "+Server.inWidget(p2)));
}
public static function alignmentNew(p1:Float,p2:Float,p3:Float,p4:Float):Widget {
return Server.outWidget(Server.send("gtk_alignment_new "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4)));
}
public static function alignmentSet(p1:Widget,p2:Float,p3:Float,p4:Float,p5:Float):Void {
Server.send("gtk_alignment_set "+Server.inWidget(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inFloat(p5));
}
public static function alignmentSetPadding(p1:Widget,p2:Int,p3:Int,p4:Int,p5:Int):Void {
Server.send("gtk_alignment_set_padding "+Server.inWidget(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5));
}
public static function alignmentGetPadding(p1:Widget,p2:Dynamic,p3:Dynamic,p4:Dynamic,p5:Dynamic):Void {
Server.send("gtk_alignment_get_padding "+Server.inWidget(p1) + " "+Server.inDynamic(p2) + " "+Server.inDynamic(p3) + " "+Server.inDynamic(p4) + " "+Server.inDynamic(p5));
}
public static function objectSetData(p1:Widget,p2:String,p3:Int):Void {
Server.send("gtk_object_set_data "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function objectGetData(p1:Widget,p2:String):Int {
return Server.outInt(Server.send("gtk_object_get_data "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function objectRef(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_object_ref "+Server.inWidget(p1)));
}
public static function accelGroupNew():Widget {
return Server.outWidget(Server.send("gtk_accel_group_new "));
}
public static function serverCallback(p1:String):Widget {
return Server.outWidget(Server.send("gtk_server_callback "+Server.inString(p1)));
}
public static function serverCallbackValue(p1:String,p2:String):String {
return Server.outString(Server.send("gtk_server_callback_value "+Server.inString(p1) + " "+Server.inString(p2)));
}
public static function serverCfg(p1:String):String {
return Server.outString(Server.send("gtk_server_cfg "+Server.inString(p1)));
}
public static function serverConnect(p1:String,p2:String,p3:String):String {
return Server.outString(Server.send("gtk_server_connect "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3)));
}
public static function serverConnectAfter(p1:String,p2:String,p3:String):String {
return Server.outString(Server.send("gtk_server_connect_after "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3)));
}
public static function serverDefine(p1:String):String {
return Server.outString(Server.send("gtk_server_define "+Server.inString(p1)));
}
public static function serverDisableCStringEscaping():String {
return Server.outString(Server.send("gtk_server_disable_c_string_escaping "));
}
public static function serverDisconnect(p1:Widget,p2:String):String {
return Server.outString(Server.send("gtk_server_disconnect "+Server.inWidget(p1) + " "+Server.inString(p2)));
}
public static function serverEcho(p1:String):String {
return Server.outString(Server.send("gtk_server_echo "+Server.inString(p1)));
}
public static function serverEnableCStringEscaping():String {
return Server.outString(Server.send("gtk_server_enable_c_string_escaping "));
}
public static function serverExit():Void {
Server.send("gtk_server_exit ");
}
public static function serverFfi():String {
return Server.outString(Server.send("gtk_server_ffi "));
}
public static function serverToolkit():String {
return Server.outString(Server.send("gtk_server_toolkit "));
}
public static function serverOs():String {
return Server.outString(Server.send("gtk_server_os "));
}
public static function serverKey():String {
return Server.outString(Server.send("gtk_server_key "));
}
public static function serverMacroVar(p1:String,p2:String):String {
return Server.outString(Server.send("gtk_server_macro_var "+Server.inString(p1) + " "+Server.inString(p2)));
}
public static function serverMacroDefine(p1:String):String {
return Server.outString(Server.send("gtk_server_macro_define "+Server.inString(p1)));
}
public static function serverMacroRedefine(p1:String):String {
return Server.outString(Server.send("gtk_server_macro_redefine "+Server.inString(p1)));
}
public static function serverMouse(p1:String):String {
return Server.outString(Server.send("gtk_server_mouse "+Server.inString(p1)));
}
public static function serverOpaque():String {
return Server.outString(Server.send("gtk_server_opaque "));
}
public static function serverPid():String {
return Server.outString(Server.send("gtk_server_pid "));
}
public static function serverRedefine(p1:String):String {
return Server.outString(Server.send("gtk_server_redefine "+Server.inString(p1)));
}
public static function serverRequire(p1:String):String {
return Server.outString(Server.send("gtk_server_require "+Server.inString(p1)));
}
public static function serverSetCStringEscaping(p1:String):String {
return Server.outString(Server.send("gtk_server_set_c_string_escaping "+Server.inString(p1)));
}
public static function serverTimeout(p1:String,p2:String,p3:String):String {
return Server.outString(Server.send("gtk_server_timeout "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3)));
}
public static function serverTimeoutRemove(p1:String):String {
return Server.outString(Server.send("gtk_server_timeout_remove "+Server.inString(p1)));
}
public static function serverVersion():String {
return Server.outString(Server.send("gtk_server_version "));
}
public static function mozEmbedNew():Widget {
return Server.outWidget(Server.send("gtk_moz_embed_new "));
}
public static function mozEmbedSetCompPath(p1:String):Void {
Server.send("gtk_moz_embed_set_comp_path "+Server.inString(p1));
}
public static function mozEmbedSetProfilePath(p1:String,p2:String):Void {
Server.send("gtk_moz_embed_set_profile_path "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function mozEmbedLoadUrl(p1:Widget,p2:String):Void {
Server.send("gtk_moz_embed_load_url "+Server.inWidget(p1) + " "+Server.inString(p2));
}
public static function mozEmbedOpenStream(p1:Widget,p2:String,p3:String):Void {
Server.send("gtk_moz_embed_open_stream "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function mozEmbedAppendData(p1:Widget,p2:String,p3:Int):Void {
Server.send("gtk_moz_embed_append_data "+Server.inWidget(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function glInit(p1:Widget,p2:Widget):Void {
Server.send("gtk_gl_init "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function widgetSetGlCapability(p1:Widget,p2:Widget,p3:Widget,p4:Bool,p5:Int):Bool {
return Server.outBool(Server.send("gtk_widget_set_gl_capability "+Server.inWidget(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inBool(p4) + " "+Server.inInt(p5)));
}
public static function widgetGetGlContext(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_widget_get_gl_context "+Server.inWidget(p1)));
}
public static function widgetGetGlWindow(p1:Widget):Widget {
return Server.outWidget(Server.send("gtk_widget_get_gl_window "+Server.inWidget(p1)));
}
public static function glAreaNew(p1:Bytes):Widget {
return Server.outWidget(Server.send("gtk_gl_area_new "+Server.inBytes(p1)));
}
public static function glAreaMakeCurrent(p1:Widget):Void {
Server.send("gtk_gl_area_make_current "+Server.inWidget(p1));
}
public static function glAreaSwapBuffers(p1:Widget):Void {
Server.send("gtk_gl_area_swap_buffers "+Server.inWidget(p1));
}
}