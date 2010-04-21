
package gtk;

import gtk.Model;
import gtk.Server; 
import haxe.io.Bytes;

class Gtk {
public static function windowNew(p1:Int,fn:String->Void):Void {
Server.send("gtk_window_new "+Server.inInt(p1),fn);
}
public static function windowSetTitle(p1:String,p2:String):Void {
Server.send("gtk_window_set_title "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function windowGetTitle(p1:String,fn:String->Void):Void {
Server.send("gtk_window_get_title "+Server.inString(p1),fn);
}
public static function windowSetDefaultSize(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_window_set_default_size "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function windowSetPosition(p1:String,p2:Int):Void {
Server.send("gtk_window_set_position "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function windowSetResizable(p1:String,p2:Bool):Void {
Server.send("gtk_window_set_resizable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function windowSetTransientFor(p1:String,p2:String):Void {
Server.send("gtk_window_set_transient_for "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function windowSetModal(p1:String,p2:Bool):Void {
Server.send("gtk_window_set_modal "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function windowMaximize(p1:String):Void {
Server.send("gtk_window_maximize "+Server.inString(p1));
}
public static function messageDialogNew(p1:String,p2:Int,p3:Int,p4:Int,p5:String,p6:String,fn:String->Void):Void {
Server.send("gtk_message_dialog_new "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6),fn);
}
public static function messageDialogNewWithMarkup(p1:String,p2:Int,p3:Int,p4:Int,p5:String,p6:String,fn:String->Void):Void {
Server.send("gtk_message_dialog_new_with_markup "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6),fn);
}
public static function windowSetIconFromFile(p1:String,p2:String,p3:Widget,fn:Bool->Void):Void {
Server.send("gtk_window_set_icon_from_file "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3),fn);
}
public static function windowSetKeepAbove(p1:String,p2:Bool):Void {
Server.send("gtk_window_set_keep_above "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function windowSetKeepBelow(p1:String,p2:Bool):Void {
Server.send("gtk_window_set_keep_below "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function aboutDialogSetVersion(p1:String,p2:String):Void {
Server.send("gtk_about_dialog_set_version "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function windowSetPolicy(p1:String,p2:Int,p3:Int,p4:Int):Void {
Server.send("gtk_window_set_policy "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function windowFullscreen(p1:String):Void {
Server.send("gtk_window_fullscreen "+Server.inString(p1));
}
public static function windowUnfullscreen(p1:String):Void {
Server.send("gtk_window_unfullscreen "+Server.inString(p1));
}
public static function windowSetIconName(p1:String,p2:String):Void {
Server.send("gtk_window_set_icon_name "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function windowAddAccelGroup(p1:String,p2:String):Void {
Server.send("gtk_window_add_accel_group "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function windowSetTypeHint(p1:String,p2:Int):Void {
Server.send("gtk_window_set_type_hint "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function windowReshowWithInitialSize(p1:String):Void {
Server.send("gtk_window_reshow_with_initial_size "+Server.inString(p1));
}
public static function windowSetAcceptFocus(p1:String,p2:Bool):Void {
Server.send("gtk_window_set_accept_focus "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function windowPresent(p1:String):Void {
Server.send("gtk_window_present "+Server.inString(p1));
}
public static function windowIsActive(p1:String,fn:Bool->Void):Void {
Server.send("gtk_window_is_active "+Server.inString(p1),fn);
}
public static function tableNew(p1:Int,p2:Int,p3:Bool,fn:String->Void):Void {
Server.send("gtk_table_new "+Server.inInt(p1) + " "+Server.inInt(p2) + " "+Server.inBool(p3),fn);
}
public static function tableAttachDefaults(p1:String,p2:String,p3:Int,p4:Int,p5:Int,p6:Int):Void {
Server.send("gtk_table_attach_defaults "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5) + " "+Server.inInt(p6));
}
public static function containerAdd(p1:String,p2:String):Void {
Server.send("gtk_container_add "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function containerRemove(p1:String,p2:String):Void {
Server.send("gtk_container_remove "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function containerSetBorderWidth(p1:String,p2:Int):Void {
Server.send("gtk_container_set_border_width "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function hboxNew(p1:Bool,p2:Int,fn:String->Void):Void {
Server.send("gtk_hbox_new "+Server.inBool(p1) + " "+Server.inInt(p2),fn);
}
public static function vboxNew(p1:Bool,p2:Int,fn:String->Void):Void {
Server.send("gtk_vbox_new "+Server.inBool(p1) + " "+Server.inInt(p2),fn);
}
public static function boxPackStart(p1:String,p2:String,p3:Bool,p4:Bool,p5:Int):Void {
Server.send("gtk_box_pack_start "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inBool(p3) + " "+Server.inBool(p4) + " "+Server.inInt(p5));
}
public static function boxPackEnd(p1:String,p2:String,p3:Bool,p4:Bool,p5:Int):Void {
Server.send("gtk_box_pack_end "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inBool(p3) + " "+Server.inBool(p4) + " "+Server.inInt(p5));
}
public static function boxPackStartDefaults(p1:String,p2:String):Void {
Server.send("gtk_box_pack_start_defaults "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function boxPackEndDefaults(p1:String,p2:String):Void {
Server.send("gtk_box_pack_end_defaults "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function boxSetSpacing(p1:String,p2:Int):Void {
Server.send("gtk_box_set_spacing "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function buttonNew(fn:String->Void):Void {
Server.send("gtk_button_new ",fn);
}
public static function buttonNewWithLabel(p1:String,fn:String->Void):Void {
Server.send("gtk_button_new_with_label "+Server.inString(p1),fn);
}
public static function buttonNewFromStock(p1:String,fn:String->Void):Void {
Server.send("gtk_button_new_from_stock "+Server.inString(p1),fn);
}
public static function buttonNewWithMnemonic(p1:String,fn:String->Void):Void {
Server.send("gtk_button_new_with_mnemonic "+Server.inString(p1),fn);
}
public static function buttonSetUseStock(p1:String,p2:Bool):Void {
Server.send("gtk_button_set_use_stock "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function buttonSetLabel(p1:String,p2:String):Void {
Server.send("gtk_button_set_label "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function buttonSetRelief(p1:String,p2:Int):Void {
Server.send("gtk_button_set_relief "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function hbuttonBoxNew(fn:String->Void):Void {
Server.send("gtk_hbutton_box_new ",fn);
}
public static function buttonBoxSetLayout(p1:String,p2:Int):Void {
Server.send("gtk_button_box_set_layout "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function binGetChild(p1:String,fn:String->Void):Void {
Server.send("gtk_bin_get_child "+Server.inString(p1),fn);
}
public static function buttonClicked(p1:String):Void {
Server.send("gtk_button_clicked "+Server.inString(p1));
}
public static function toggleButtonNew(fn:String->Void):Void {
Server.send("gtk_toggle_button_new ",fn);
}
public static function toggleButtonNewWithLabel(p1:String,fn:String->Void):Void {
Server.send("gtk_toggle_button_new_with_label "+Server.inString(p1),fn);
}
public static function toggleButtonNewWithMnemonic(p1:String,fn:String->Void):Void {
Server.send("gtk_toggle_button_new_with_mnemonic "+Server.inString(p1),fn);
}
public static function toggleButtonGetActive(p1:String,fn:Bool->Void):Void {
Server.send("gtk_toggle_button_get_active "+Server.inString(p1),fn);
}
public static function toggleButtonSetActive(p1:String,p2:Bool):Void {
Server.send("gtk_toggle_button_set_active "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function checkButtonNewWithLabel(p1:String,fn:String->Void):Void {
Server.send("gtk_check_button_new_with_label "+Server.inString(p1),fn);
}
public static function entryNew(fn:String->Void):Void {
Server.send("gtk_entry_new ",fn);
}
public static function entryGetText(p1:String,fn:String->Void):Void {
Server.send("gtk_entry_get_text "+Server.inString(p1),fn);
}
public static function entrySetText(p1:String,p2:String):Void {
Server.send("gtk_entry_set_text "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function entrySetVisibility(p1:String,p2:Bool):Void {
Server.send("gtk_entry_set_visibility "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function editableDeleteText(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_editable_delete_text "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function editableGetChars(p1:String,p2:Int,p3:Int,fn:String->Void):Void {
Server.send("gtk_editable_get_chars "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3),fn);
}
public static function editableSetEditable(p1:String,p2:Bool):Void {
Server.send("gtk_editable_set_editable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function editableSelectRegion(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_editable_select_region "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function editableSetPosition(p1:String,p2:Int):Void {
Server.send("gtk_editable_set_position "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function editableGetPosition(p1:String,fn:Int->Void):Void {
Server.send("gtk_editable_get_position "+Server.inString(p1),fn);
}
public static function editableGetSelectionBounds(p1:String,p2:Dynamic,p3:Dynamic,fn:Bool->Void):Void {
Server.send("gtk_editable_get_selection_bounds "+Server.inString(p1) + " "+Server.inDynamic(p2) + " "+Server.inDynamic(p3),fn);
}
public static function editableInsertText(p1:String,p2:String,p3:Int,p4:Dynamic):Void {
Server.send("gtk_editable_insert_text "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inDynamic(p4));
}
public static function textBufferNew(p1:Widget,fn:String->Void):Void {
Server.send("gtk_text_buffer_new "+Server.inWidget(p1),fn);
}
public static function textBufferSetText(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_text_buffer_set_text "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function textBufferInsertAtCursor(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_text_buffer_insert_at_cursor "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function textBufferGetInsert(p1:String,fn:String->Void):Void {
Server.send("gtk_text_buffer_get_insert "+Server.inString(p1),fn);
}
public static function textBufferGetStartIter(p1:String,p2:String):Void {
Server.send("gtk_text_buffer_get_start_iter "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textBufferGetEndIter(p1:String,p2:String):Void {
Server.send("gtk_text_buffer_get_end_iter "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textBufferGetBounds(p1:String,p2:String,p3:String):Void {
Server.send("gtk_text_buffer_get_bounds "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function textBufferGetSelectionBounds(p1:String,p2:String,p3:String,fn:Bool->Void):Void {
Server.send("gtk_text_buffer_get_selection_bounds "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3),fn);
}
public static function textBufferGetIterAtOffset(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_text_buffer_get_iter_at_offset "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function textBufferGetText(p1:String,p2:String,p3:String,p4:Bool,fn:String->Void):Void {
Server.send("gtk_text_buffer_get_text "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inBool(p4),fn);
}
public static function textBufferInsert(p1:String,p2:String,p3:String,p4:Int):Void {
Server.send("gtk_text_buffer_insert "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4));
}
public static function textBufferCreateTag(p1:String,p2:String,p3:String,p4:Int,p5:Widget,fn:String->Void):Void {
Server.send("gtk_text_buffer_create_tag "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inWidget(p5),fn);
}
public static function textBufferInsertWithTagsByName(p1:String,p2:String,p3:String,p4:Int,p5:String,p6:String,p7:String,p8:Widget):Void {
Server.send("gtk_text_buffer_insert_with_tags_by_name "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6) + " "+Server.inString(p7) + " "+Server.inWidget(p8));
}
public static function textBufferApplyTagByName(p1:String,p2:String,p3:String,p4:String):Void {
Server.send("gtk_text_buffer_apply_tag_by_name "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inString(p4));
}
public static function textBufferRemoveTagByName(p1:String,p2:String,p3:String,p4:String):Void {
Server.send("gtk_text_buffer_remove_tag_by_name "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inString(p4));
}
public static function textBufferRemoveAllTags(p1:String,p2:String,p3:String):Void {
Server.send("gtk_text_buffer_remove_all_tags "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function textBufferGetTagTable(p1:String,fn:String->Void):Void {
Server.send("gtk_text_buffer_get_tag_table "+Server.inString(p1),fn);
}
public static function textBufferSelectRange(p1:String,p2:String,p3:String):Void {
Server.send("gtk_text_buffer_select_range "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function textBufferGetSelectionBound(p1:String,fn:String->Void):Void {
Server.send("gtk_text_buffer_get_selection_bound "+Server.inString(p1),fn);
}
public static function textBufferGetLineCount(p1:String,fn:Int->Void):Void {
Server.send("gtk_text_buffer_get_line_count "+Server.inString(p1),fn);
}
public static function textBufferCreateMark(p1:String,p2:String,p3:String,p4:Bool,fn:String->Void):Void {
Server.send("gtk_text_buffer_create_mark "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inBool(p4),fn);
}
public static function textBufferGetIterAtMark(p1:String,p2:String,p3:String):Void {
Server.send("gtk_text_buffer_get_iter_at_mark "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function textBufferGetIterAtLine(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_text_buffer_get_iter_at_line "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function textBufferDelete(p1:String,p2:String,p3:String):Void {
Server.send("gtk_text_buffer_delete "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function textBufferDeleteMark(p1:String,p2:String):Void {
Server.send("gtk_text_buffer_delete_mark "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textBufferDeleteMarkByName(p1:String,p2:String):Void {
Server.send("gtk_text_buffer_delete_mark_by_name "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textBufferPlaceCursor(p1:String,p2:String):Void {
Server.send("gtk_text_buffer_place_cursor "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textBufferCopyClipboard(p1:String,p2:String):Void {
Server.send("gtk_text_buffer_copy_clipboard "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textBufferCutClipboard(p1:String,p2:String,p3:Bool):Void {
Server.send("gtk_text_buffer_cut_clipboard "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inBool(p3));
}
public static function textBufferPasteClipboard(p1:String,p2:String,p3:Widget,p4:Bool):Void {
Server.send("gtk_text_buffer_paste_clipboard "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3) + " "+Server.inBool(p4));
}
public static function scrolledWindowNew(p1:Widget,p2:Widget,fn:String->Void):Void {
Server.send("gtk_scrolled_window_new "+Server.inWidget(p1) + " "+Server.inWidget(p2),fn);
}
public static function scrolledWindowSetPolicy(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_scrolled_window_set_policy "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function scrolledWindowSetShadowType(p1:String,p2:Int):Void {
Server.send("gtk_scrolled_window_set_shadow_type "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function scrolledWindowAddWithViewport(p1:String,p2:String):Void {
Server.send("gtk_scrolled_window_add_with_viewport "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function scrolledWindowGetHadjustment(p1:String,fn:String->Void):Void {
Server.send("gtk_scrolled_window_get_hadjustment "+Server.inString(p1),fn);
}
public static function scrolledWindowGetVadjustment(p1:String,fn:String->Void):Void {
Server.send("gtk_scrolled_window_get_vadjustment "+Server.inString(p1),fn);
}
public static function scrolledWindowSetHadjustment(p1:String,p2:String):Void {
Server.send("gtk_scrolled_window_set_hadjustment "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function scrolledWindowSetVadjustment(p1:String,p2:String):Void {
Server.send("gtk_scrolled_window_set_vadjustment "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function scrolledWindowSetPlacement(p1:String,p2:Int):Void {
Server.send("gtk_scrolled_window_set_placement "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textViewNewWithBuffer(p1:String,fn:String->Void):Void {
Server.send("gtk_text_view_new_with_buffer "+Server.inString(p1),fn);
}
public static function textViewSetWrapMode(p1:String,p2:Int):Void {
Server.send("gtk_text_view_set_wrap_mode "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textViewSetEditable(p1:String,p2:Bool):Void {
Server.send("gtk_text_view_set_editable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function textViewSetBorderWindowSize(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_text_view_set_border_window_size "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function textViewMoveMarkOnscreen(p1:String,p2:String,fn:Bool->Void):Void {
Server.send("gtk_text_view_move_mark_onscreen "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function textViewScrollToMark(p1:String,p2:String,p3:Float,p4:Bool,p5:Float,p6:Float):Void {
Server.send("gtk_text_view_scroll_to_mark "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inFloat(p3) + " "+Server.inBool(p4) + " "+Server.inFloat(p5) + " "+Server.inFloat(p6));
}
public static function textViewScrollMarkOnscreen(p1:String,p2:String):Void {
Server.send("gtk_text_view_scroll_mark_onscreen "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textViewSetPixelsInsideWrap(p1:String,p2:Int):Void {
Server.send("gtk_text_view_set_pixels_inside_wrap "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textViewGetPixelsInsideWrap(p1:String,fn:Int->Void):Void {
Server.send("gtk_text_view_get_pixels_inside_wrap "+Server.inString(p1),fn);
}
public static function textViewSetPixelsAboveLines(p1:String,p2:Int):Void {
Server.send("gtk_text_view_set_pixels_above_lines "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textViewGetPixelsAboveLines(p1:String,fn:Int->Void):Void {
Server.send("gtk_text_view_get_pixels_above_lines "+Server.inString(p1),fn);
}
public static function textViewSetCursorVisible(p1:String,p2:Bool):Void {
Server.send("gtk_text_view_set_cursor_visible "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function textViewWindowToBufferCoords(p1:String,p2:Int,p3:Int,p4:Int,p5:String,p6:String):Void {
Server.send("gtk_text_view_window_to_buffer_coords "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inString(p6));
}
public static function textIterForwardSearch(p1:String,p2:String,p3:Int,p4:String,p5:String,p6:Widget,fn:Bool->Void):Void {
Server.send("gtk_text_iter_forward_search "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inString(p5) + " "+Server.inWidget(p6),fn);
}
public static function textIterForwardVisibleCursorPosition(p1:String,fn:Bool->Void):Void {
Server.send("gtk_text_iter_forward_visible_cursor_position "+Server.inString(p1),fn);
}
public static function textIterForwardToLineEnd(p1:String,fn:Bool->Void):Void {
Server.send("gtk_text_iter_forward_to_line_end "+Server.inString(p1),fn);
}
public static function textIterSetLine(p1:String,p2:Int):Void {
Server.send("gtk_text_iter_set_line "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textIterSetLineOffset(p1:String,p2:Int):Void {
Server.send("gtk_text_iter_set_line_offset "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textIterSetLineIndex(p1:String,p2:Int):Void {
Server.send("gtk_text_iter_set_line_index "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function textIterGetText(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_text_iter_get_text "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function textIterGetLine(p1:String,fn:Int->Void):Void {
Server.send("gtk_text_iter_get_line "+Server.inString(p1),fn);
}
public static function textViewNew(fn:String->Void):Void {
Server.send("gtk_text_view_new ",fn);
}
public static function textViewGetBuffer(p1:String,fn:String->Void):Void {
Server.send("gtk_text_view_get_buffer "+Server.inString(p1),fn);
}
public static function textTagTableRemove(p1:String,p2:String):Void {
Server.send("gtk_text_tag_table_remove "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function textNew(p1:Widget,p2:Widget,fn:String->Void):Void {
Server.send("gtk_text_new "+Server.inWidget(p1) + " "+Server.inWidget(p2),fn);
}
public static function textSetEditable(p1:String,p2:Bool):Void {
Server.send("gtk_text_set_editable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function textInsert(p1:String,p2:Widget,p3:Widget,p4:Widget,p5:String,p6:Int):Void {
Server.send("gtk_text_insert "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4) + " "+Server.inString(p5) + " "+Server.inInt(p6));
}
public static function textSetAdjustments(p1:String,p2:Widget,p3:String):Void {
Server.send("gtk_text_set_adjustments "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3));
}
public static function textGetLength(p1:String,fn:Int->Void):Void {
Server.send("gtk_text_get_length "+Server.inString(p1),fn);
}
public static function textSetWordWrap(p1:String,p2:Bool):Void {
Server.send("gtk_text_set_word_wrap "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function textBackwardDelete(p1:String,p2:Int,fn:Bool->Void):Void {
Server.send("gtk_text_backward_delete "+Server.inString(p1) + " "+Server.inInt(p2),fn);
}
public static function textForwardDelete(p1:String,p2:Int,fn:Bool->Void):Void {
Server.send("gtk_text_forward_delete "+Server.inString(p1) + " "+Server.inInt(p2),fn);
}
public static function textSetPoint(p1:String,p2:Int):Void {
Server.send("gtk_text_set_point "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function imageNew(fn:String->Void):Void {
Server.send("gtk_image_new ",fn);
}
public static function imageNewFromPixmap(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_image_new_from_pixmap "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function imageNewFromPixbuf(p1:String,fn:String->Void):Void {
Server.send("gtk_image_new_from_pixbuf "+Server.inString(p1),fn);
}
public static function imageSetFromPixbuf(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_image_set_from_pixbuf "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function imageSetFromPixmap(p1:String,p2:String,p3:Widget):Void {
Server.send("gtk_image_set_from_pixmap "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3));
}
public static function imageSet(p1:String,p2:String,p3:Widget):Void {
Server.send("gtk_image_set "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3));
}
public static function imageSetFromFile(p1:String,p2:String):Void {
Server.send("gtk_image_set_from_file "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function imageNewFromFile(p1:String,fn:String->Void):Void {
Server.send("gtk_image_new_from_file "+Server.inString(p1),fn);
}
public static function imageNewFromStock(p1:String,p2:Int,fn:String->Void):Void {
Server.send("gtk_image_new_from_stock "+Server.inString(p1) + " "+Server.inInt(p2),fn);
}
public static function imageMenuItemNewFromStock(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_image_menu_item_new_from_stock "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function pixmapNew(p1:String,p2:Widget,fn:String->Void):Void {
Server.send("gtk_pixmap_new "+Server.inString(p1) + " "+Server.inWidget(p2),fn);
}
public static function drawingAreaNew(fn:String->Void):Void {
Server.send("gtk_drawing_area_new ",fn);
}
public static function widgetQueueDraw(p1:String):Void {
Server.send("gtk_widget_queue_draw "+Server.inString(p1));
}
public static function widgetGetColormap(p1:String,fn:String->Void):Void {
Server.send("gtk_widget_get_colormap "+Server.inString(p1),fn);
}
public static function widgetGetParentWindow(p1:String,fn:String->Void):Void {
Server.send("gtk_widget_get_parent_window "+Server.inString(p1),fn);
}
public static function widgetCreatePangoLayout(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_widget_create_pango_layout "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function vscrollbarNew(p1:String,fn:String->Void):Void {
Server.send("gtk_vscrollbar_new "+Server.inString(p1),fn);
}
public static function labelNew(p1:String,fn:String->Void):Void {
Server.send("gtk_label_new "+Server.inString(p1),fn);
}
public static function labelSetText(p1:String,p2:String):Void {
Server.send("gtk_label_set_text "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function labelGetText(p1:String,fn:String->Void):Void {
Server.send("gtk_label_get_text "+Server.inString(p1),fn);
}
public static function labelSetLineWrap(p1:String,p2:Bool):Void {
Server.send("gtk_label_set_line_wrap "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function labelSetSelectable(p1:String,p2:Bool):Void {
Server.send("gtk_label_set_selectable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function labelSetUseMarkup(p1:String,p2:Bool):Void {
Server.send("gtk_label_set_use_markup "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function labelSetJustify(p1:String,p2:Int):Void {
Server.send("gtk_label_set_justify "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function labelGetWidthChars(p1:String,fn:Int->Void):Void {
Server.send("gtk_label_get_width_chars "+Server.inString(p1),fn);
}
public static function labelGetMaxWidthChars(p1:String,fn:Int->Void):Void {
Server.send("gtk_label_get_max_width_chars "+Server.inString(p1),fn);
}
public static function labelSetMarkupWithMnemonic(p1:String,p2:String):Void {
Server.send("gtk_label_set_markup_with_mnemonic "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function frameNew(p1:Widget,fn:String->Void):Void {
Server.send("gtk_frame_new "+Server.inWidget(p1),fn);
}
public static function frameSetLabelAlign(p1:String,p2:Float,p3:Float):Void {
Server.send("gtk_frame_set_label_align "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3));
}
public static function frameSetLabel(p1:String,p2:String):Void {
Server.send("gtk_frame_set_label "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function frameGetLabel(p1:String,fn:String->Void):Void {
Server.send("gtk_frame_get_label "+Server.inString(p1),fn);
}
public static function frameGetLabelWidget(p1:String,fn:String->Void):Void {
Server.send("gtk_frame_get_label_widget "+Server.inString(p1),fn);
}
public static function aspectFrameNew(p1:String,p2:Float,p3:Float,p4:Float,p5:Bool,fn:String->Void):Void {
Server.send("gtk_aspect_frame_new "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inBool(p5),fn);
}
public static function aspectFrameSet(p1:String,p2:Float,p3:Float,p4:Float,p5:Bool):Void {
Server.send("gtk_aspect_frame_set "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inBool(p5));
}
public static function frameSetShadowType(p1:String,p2:Int):Void {
Server.send("gtk_frame_set_shadow_type "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function radioButtonNew(p1:Widget,fn:String->Void):Void {
Server.send("gtk_radio_button_new "+Server.inWidget(p1),fn);
}
public static function radioButtonNewWithLabel(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_radio_button_new_with_label "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function radioButtonNewFromWidget(p1:String,fn:String->Void):Void {
Server.send("gtk_radio_button_new_from_widget "+Server.inString(p1),fn);
}
public static function radioButtonNewWithLabelFromWidget(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_radio_button_new_with_label_from_widget "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function notebookNew(fn:String->Void):Void {
Server.send("gtk_notebook_new ",fn);
}
public static function notebookSetTabPos(p1:String,p2:Int):Void {
Server.send("gtk_notebook_set_tab_pos "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function notebookPopupEnable(p1:String):Void {
Server.send("gtk_notebook_popup_enable "+Server.inString(p1));
}
public static function notebookPopupDisable(p1:String):Void {
Server.send("gtk_notebook_popup_disable "+Server.inString(p1));
}
public static function notebookGetNPages(p1:String,fn:Int->Void):Void {
Server.send("gtk_notebook_get_n_pages "+Server.inString(p1),fn);
}
public static function notebookGetNthPage(p1:String,p2:Int,fn:String->Void):Void {
Server.send("gtk_notebook_get_nth_page "+Server.inString(p1) + " "+Server.inInt(p2),fn);
}
public static function notebookAppendPage(p1:String,p2:String,p3:String,fn:Int->Void):Void {
Server.send("gtk_notebook_append_page "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3),fn);
}
public static function notebookInsertPage(p1:String,p2:String,p3:String,p4:Int,fn:Int->Void):Void {
Server.send("gtk_notebook_insert_page "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4),fn);
}
public static function notebookRemovePage(p1:String,p2:Int):Void {
Server.send("gtk_notebook_remove_page "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function notebookGetCurrentPage(p1:String,fn:Int->Void):Void {
Server.send("gtk_notebook_get_current_page "+Server.inString(p1),fn);
}
public static function notebookGetMenuLabel(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_notebook_get_menu_label "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function notebookSetPage(p1:String,p2:Int):Void {
Server.send("gtk_notebook_set_page "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function notebookSetCurrentPage(p1:String,p2:Int):Void {
Server.send("gtk_notebook_set_current_page "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function notebookSetTabLabelText(p1:String,p2:String,p3:String):Void {
Server.send("gtk_notebook_set_tab_label_text "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function notebookSetScrollable(p1:String,p2:Int):Void {
Server.send("gtk_notebook_set_scrollable "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function notebookSetTabReorderable(p1:String,p2:String,p3:Bool):Void {
Server.send("gtk_notebook_set_tab_reorderable "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inBool(p3));
}
public static function adjustmentNew(p1:Float,p2:Float,p3:Float,p4:Float,p5:Float,p6:Float,fn:String->Void):Void {
Server.send("gtk_adjustment_new "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inFloat(p5) + " "+Server.inFloat(p6),fn);
}
public static function adjustmentGetValue(p1:String,fn:Float->Void):Void {
Server.send("gtk_adjustment_get_value "+Server.inString(p1),fn);
}
public static function adjustmentSetValue(p1:String,p2:Float):Void {
Server.send("gtk_adjustment_set_value "+Server.inString(p1) + " "+Server.inFloat(p2));
}
public static function adjustmentClampPage(p1:String,p2:Float,p3:Float):Void {
Server.send("gtk_adjustment_clamp_page "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3));
}
public static function rangeGetAdjustment(p1:String,fn:String->Void):Void {
Server.send("gtk_range_get_adjustment "+Server.inString(p1),fn);
}
public static function rangeGetValue(p1:String,fn:Float->Void):Void {
Server.send("gtk_range_get_value "+Server.inString(p1),fn);
}
public static function rangeSetValue(p1:String,p2:Float):Void {
Server.send("gtk_range_set_value "+Server.inString(p1) + " "+Server.inFloat(p2));
}
public static function scaleSetDrawValue(p1:String,p2:Bool):Void {
Server.send("gtk_scale_set_draw_value "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function scaleSetValuePos(p1:String,p2:Int):Void {
Server.send("gtk_scale_set_value_pos "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function hscaleNew(p1:String,fn:String->Void):Void {
Server.send("gtk_hscale_new "+Server.inString(p1),fn);
}
public static function hscaleNewWithRange(p1:Float,p2:Float,p3:Float,fn:String->Void):Void {
Server.send("gtk_hscale_new_with_range "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3),fn);
}
public static function vscaleNewWithRange(p1:Float,p2:Float,p3:Float,fn:String->Void):Void {
Server.send("gtk_vscale_new_with_range "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3),fn);
}
public static function spinButtonNew(p1:String,p2:Float,p3:Int,fn:String->Void):Void {
Server.send("gtk_spin_button_new "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inInt(p3),fn);
}
public static function spinButtonNewWithRange(p1:Float,p2:Float,p3:Float,fn:String->Void):Void {
Server.send("gtk_spin_button_new_with_range "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3),fn);
}
public static function spinButtonGetValueAsInt(p1:String,fn:Int->Void):Void {
Server.send("gtk_spin_button_get_value_as_int "+Server.inString(p1),fn);
}
public static function spinButtonGetValue(p1:String,fn:Float->Void):Void {
Server.send("gtk_spin_button_get_value "+Server.inString(p1),fn);
}
public static function spinButtonSetWrap(p1:String,p2:Bool):Void {
Server.send("gtk_spin_button_set_wrap "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function spinButtonSetValue(p1:String,p2:Float):Void {
Server.send("gtk_spin_button_set_value "+Server.inString(p1) + " "+Server.inFloat(p2));
}
public static function arrowNew(p1:Int,p2:Int,fn:String->Void):Void {
Server.send("gtk_arrow_new "+Server.inInt(p1) + " "+Server.inInt(p2),fn);
}
public static function fileChooserDialogNew(p1:String,p2:String,p3:Int,p4:String,p5:Int,p6:String,p7:Int,p8:Widget,fn:String->Void):Void {
Server.send("gtk_file_chooser_dialog_new "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inInt(p5) + " "+Server.inString(p6) + " "+Server.inInt(p7) + " "+Server.inWidget(p8),fn);
}
public static function fileChooserWidgetNew(p1:Int,fn:String->Void):Void {
Server.send("gtk_file_chooser_widget_new "+Server.inInt(p1),fn);
}
public static function fileChooserSetLocalOnly(p1:String,p2:Bool):Void {
Server.send("gtk_file_chooser_set_local_only "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function dialogRun(p1:String,fn:Int->Void):Void {
Server.send("gtk_dialog_run "+Server.inString(p1),fn);
}
public static function fileChooserGetFilename(p1:String,fn:String->Void):Void {
Server.send("gtk_file_chooser_get_filename "+Server.inString(p1),fn);
}
public static function fileChooserGetUri(p1:String,fn:String->Void):Void {
Server.send("gtk_file_chooser_get_uri "+Server.inString(p1),fn);
}
public static function fileChooserGetCurrentFolder(p1:String,fn:String->Void):Void {
Server.send("gtk_file_chooser_get_current_folder "+Server.inString(p1),fn);
}
public static function fileChooserSetFilename(p1:String,p2:String,fn:Bool->Void):Void {
Server.send("gtk_file_chooser_set_filename "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function fileFilterNew(fn:String->Void):Void {
Server.send("gtk_file_filter_new ",fn);
}
public static function fileFilterAddPattern(p1:String,p2:String):Void {
Server.send("gtk_file_filter_add_pattern "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function fileFilterSetName(p1:String,p2:String):Void {
Server.send("gtk_file_filter_set_name "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function fileChooserAddFilter(p1:String,p2:String):Void {
Server.send("gtk_file_chooser_add_filter "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function fileChooserSetSelectMultiple(p1:String,p2:Bool):Void {
Server.send("gtk_file_chooser_set_select_multiple "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function fontSelectionDialogNew(p1:String,fn:String->Void):Void {
Server.send("gtk_font_selection_dialog_new "+Server.inString(p1),fn);
}
public static function fontSelectionDialogGetFontName(p1:String,fn:String->Void):Void {
Server.send("gtk_font_selection_dialog_get_font_name "+Server.inString(p1),fn);
}
public static function fontSelectionNew(fn:String->Void):Void {
Server.send("gtk_font_selection_new ",fn);
}
public static function fontSelectionGetFontName(p1:String,fn:String->Void):Void {
Server.send("gtk_font_selection_get_font_name "+Server.inString(p1),fn);
}
public static function fontSelectionSetFontName(p1:String,p2:String,fn:Bool->Void):Void {
Server.send("gtk_font_selection_set_font_name "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function colorSelectionNew(fn:String->Void):Void {
Server.send("gtk_color_selection_new ",fn);
}
public static function colorSelectionSetHasOpacityControl(p1:String,p2:Bool):Void {
Server.send("gtk_color_selection_set_has_opacity_control "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function colorSelectionSetCurrentColor(p1:String,p2:String):Void {
Server.send("gtk_color_selection_set_current_color "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function colorSelectionGetCurrentColor(p1:String,p2:String):Void {
Server.send("gtk_color_selection_get_current_color "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function colorSelectionSetColor(p1:String,p2:String):Void {
Server.send("gtk_color_selection_set_color "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function menuBarNew(fn:String->Void):Void {
Server.send("gtk_menu_bar_new ",fn);
}
public static function menuShellAppend(p1:String,p2:String):Void {
Server.send("gtk_menu_shell_append "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function menuItemNew(fn:String->Void):Void {
Server.send("gtk_menu_item_new ",fn);
}
public static function menuItemNewWithLabel(p1:String,fn:String->Void):Void {
Server.send("gtk_menu_item_new_with_label "+Server.inString(p1),fn);
}
public static function menuItemNewWithMnemonic(p1:String,fn:String->Void):Void {
Server.send("gtk_menu_item_new_with_mnemonic "+Server.inString(p1),fn);
}
public static function tearoffMenuItemNew(fn:String->Void):Void {
Server.send("gtk_tearoff_menu_item_new ",fn);
}
public static function separatorMenuItemNew(fn:String->Void):Void {
Server.send("gtk_separator_menu_item_new ",fn);
}
public static function menuNew(fn:String->Void):Void {
Server.send("gtk_menu_new ",fn);
}
public static function menuSetTitle(p1:String,p2:String):Void {
Server.send("gtk_menu_set_title "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function menuItemSetRightJustified(p1:String,p2:Bool):Void {
Server.send("gtk_menu_item_set_right_justified "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function menuItemSetSubmenu(p1:String,p2:String):Void {
Server.send("gtk_menu_item_set_submenu "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function checkMenuItemNewWithLabel(p1:String,fn:String->Void):Void {
Server.send("gtk_check_menu_item_new_with_label "+Server.inString(p1),fn);
}
public static function checkMenuItemNewWithMnemonic(p1:String,fn:String->Void):Void {
Server.send("gtk_check_menu_item_new_with_mnemonic "+Server.inString(p1),fn);
}
public static function checkMenuItemGetActive(p1:String,fn:Bool->Void):Void {
Server.send("gtk_check_menu_item_get_active "+Server.inString(p1),fn);
}
public static function checkMenuItemSetActive(p1:String,p2:Bool):Void {
Server.send("gtk_check_menu_item_set_active "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function menuPopup(p1:String,p2:Widget,p3:Widget,p4:Widget,p5:Widget,p6:Int,p7:Int):Void {
Server.send("gtk_menu_popup "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inWidget(p3) + " "+Server.inWidget(p4) + " "+Server.inWidget(p5) + " "+Server.inInt(p6) + " "+Server.inInt(p7));
}
public static function progressBarNew(fn:String->Void):Void {
Server.send("gtk_progress_bar_new ",fn);
}
public static function progressBarSetText(p1:String,p2:String):Void {
Server.send("gtk_progress_bar_set_text "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function progressBarSetFraction(p1:String,p2:Float):Void {
Server.send("gtk_progress_bar_set_fraction "+Server.inString(p1) + " "+Server.inFloat(p2));
}
public static function progressBarPulse(p1:String):Void {
Server.send("gtk_progress_bar_pulse "+Server.inString(p1));
}
public static function progressBarSetPulseStep(p1:String,p2:Float):Void {
Server.send("gtk_progress_bar_set_pulse_step "+Server.inString(p1) + " "+Server.inFloat(p2));
}
public static function progressConfigure(p1:String,p2:Float,p3:Float,p4:Float):Void {
Server.send("gtk_progress_configure "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4));
}
public static function progressSetValue(p1:String,p2:Float):Void {
Server.send("gtk_progress_set_value "+Server.inString(p1) + " "+Server.inFloat(p2));
}
public static function statusbarNew(fn:String->Void):Void {
Server.send("gtk_statusbar_new ",fn);
}
public static function statusbarGetContextId(p1:String,p2:String,fn:Int->Void):Void {
Server.send("gtk_statusbar_get_context_id "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function statusbarPush(p1:String,p2:Int,p3:String,fn:Int->Void):Void {
Server.send("gtk_statusbar_push "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3),fn);
}
public static function statusbarPop(p1:String,p2:Int):Void {
Server.send("gtk_statusbar_pop "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function statusbarRemove(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_statusbar_remove "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function statusbarSetHasResizeGrip(p1:String,p2:Bool):Void {
Server.send("gtk_statusbar_set_has_resize_grip "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function eventBoxNew(fn:String->Void):Void {
Server.send("gtk_event_box_new ",fn);
}
public static function comboBoxNewText(fn:String->Void):Void {
Server.send("gtk_combo_box_new_text ",fn);
}
public static function comboBoxAppendText(p1:String,p2:String):Void {
Server.send("gtk_combo_box_append_text "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function comboBoxInsertText(p1:String,p2:Int,p3:String):Void {
Server.send("gtk_combo_box_insert_text "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function comboBoxPrependText(p1:String,p2:String):Void {
Server.send("gtk_combo_box_prepend_text "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function comboBoxRemoveText(p1:String,p2:Int):Void {
Server.send("gtk_combo_box_remove_text "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function comboBoxGetActive(p1:String,fn:Int->Void):Void {
Server.send("gtk_combo_box_get_active "+Server.inString(p1),fn);
}
public static function comboBoxSetActive(p1:String,p2:Int):Void {
Server.send("gtk_combo_box_set_active "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function comboBoxGetActiveText(p1:String,fn:String->Void):Void {
Server.send("gtk_combo_box_get_active_text "+Server.inString(p1),fn);
}
public static function vseparatorNew(fn:String->Void):Void {
Server.send("gtk_vseparator_new ",fn);
}
public static function hseparatorNew(fn:String->Void):Void {
Server.send("gtk_hseparator_new ",fn);
}
public static function editableCopyClipboard(p1:String):Void {
Server.send("gtk_editable_copy_clipboard "+Server.inString(p1));
}
public static function editableCutClipboard(p1:String):Void {
Server.send("gtk_editable_cut_clipboard "+Server.inString(p1));
}
public static function editablePasteClipboard(p1:String):Void {
Server.send("gtk_editable_paste_clipboard "+Server.inString(p1));
}
public static function clipboardGet(p1:Int,fn:String->Void):Void {
Server.send("gtk_clipboard_get "+Server.inInt(p1),fn);
}
public static function clipboardSetText(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_clipboard_set_text "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function clipboardWaitForText(p1:String,fn:String->Void):Void {
Server.send("gtk_clipboard_wait_for_text "+Server.inString(p1),fn);
}
public static function clistNew(p1:Int,fn:String->Void):Void {
Server.send("gtk_clist_new "+Server.inInt(p1),fn);
}
public static function clistSetColumnTitle(p1:String,p2:Int,p3:String):Void {
Server.send("gtk_clist_set_column_title "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function clistColumnTitlesShow(p1:String):Void {
Server.send("gtk_clist_column_titles_show "+Server.inString(p1));
}
public static function clistAppend(p1:String,p2:String,fn:Int->Void):Void {
Server.send("gtk_clist_append "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function clistSetText(p1:String,p2:Int,p3:Int,p4:String):Void {
Server.send("gtk_clist_set_text "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4));
}
public static function fixedNew(fn:String->Void):Void {
Server.send("gtk_fixed_new ",fn);
}
public static function fixedPut(p1:String,p2:String,p3:Int,p4:Int):Void {
Server.send("gtk_fixed_put "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function fixedMove(p1:String,p2:String,p3:Int,p4:Int):Void {
Server.send("gtk_fixed_move "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function listStoreNew(p1:Int,p2:Int,fn:String->Void):Void {
Server.send("gtk_list_store_new "+Server.inInt(p1) + " "+Server.inInt(p2),fn);
}
public static function listStoreAppend(p1:String,p2:String):Void {
Server.send("gtk_list_store_append "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function listStoreSet(p1:String,p2:String,p3:Int,p4:String,p5:Int):Void {
Server.send("gtk_list_store_set "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inInt(p5));
}
public static function listStoreSetValue(p1:String,p2:String,p3:Int,p4:String):Void {
Server.send("gtk_list_store_set_value "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4));
}
public static function listStoreClear(p1:String):Void {
Server.send("gtk_list_store_clear "+Server.inString(p1));
}
public static function listStoreRemove(p1:String,p2:String,fn:Bool->Void):Void {
Server.send("gtk_list_store_remove "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function listStoreMoveBefore(p1:String,p2:String,p3:String):Void {
Server.send("gtk_list_store_move_before "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function listStoreMoveAfter(p1:String,p2:String,p3:String):Void {
Server.send("gtk_list_store_move_after "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function listStoreInsert(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_list_store_insert "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function listStoreInsertWithValues(p1:String,p2:String,p3:Int,p4:Int,p5:String,p6:Int):Void {
Server.send("gtk_list_store_insert_with_values "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inString(p5) + " "+Server.inInt(p6));
}
public static function cellRendererTextNew(fn:String->Void):Void {
Server.send("gtk_cell_renderer_text_new ",fn);
}
public static function treeViewNew(fn:String->Void):Void {
Server.send("gtk_tree_view_new ",fn);
}
public static function treeViewColumnSetTitle(p1:String,p2:String):Void {
Server.send("gtk_tree_view_column_set_title "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function treeViewSetModel(p1:String,p2:String):Void {
Server.send("gtk_tree_view_set_model "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function treeViewNewWithModel(p1:String,fn:String->Void):Void {
Server.send("gtk_tree_view_new_with_model "+Server.inString(p1),fn);
}
public static function treeViewColumnNew(fn:String->Void):Void {
Server.send("gtk_tree_view_column_new ",fn);
}
public static function treeViewColumnNewWithAttributes(p1:String,p2:String,p3:String,p4:Int,p5:Widget,fn:String->Void):Void {
Server.send("gtk_tree_view_column_new_with_attributes "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inWidget(p5),fn);
}
public static function treeViewColumnPackStart(p1:String,p2:String,p3:Bool):Void {
Server.send("gtk_tree_view_column_pack_start "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inBool(p3));
}
public static function treeViewAppendColumn(p1:String,p2:String):Void {
Server.send("gtk_tree_view_append_column "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function treeViewSetHeadersVisible(p1:String,p2:Bool):Void {
Server.send("gtk_tree_view_set_headers_visible "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function treeViewSetHeadersClickable(p1:String,p2:Bool):Void {
Server.send("gtk_tree_view_set_headers_clickable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function treeViewGetSelection(p1:String,fn:String->Void):Void {
Server.send("gtk_tree_view_get_selection "+Server.inString(p1),fn);
}
public static function treeViewGetHadjustment(p1:String,fn:String->Void):Void {
Server.send("gtk_tree_view_get_hadjustment "+Server.inString(p1),fn);
}
public static function treeViewGetVadjustment(p1:String,fn:String->Void):Void {
Server.send("gtk_tree_view_get_vadjustment "+Server.inString(p1),fn);
}
public static function treeViewColumnSetResizable(p1:String,p2:Bool):Void {
Server.send("gtk_tree_view_column_set_resizable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function treeViewColumnSetClickable(p1:String,p2:Bool):Void {
Server.send("gtk_tree_view_column_set_clickable "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function treeViewScrollToCell(p1:String,p2:String,p3:String,p4:Bool,p5:Float,p6:Float):Void {
Server.send("gtk_tree_view_scroll_to_cell "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inBool(p4) + " "+Server.inFloat(p5) + " "+Server.inFloat(p6));
}
public static function treeViewSetGridLines(p1:String,p2:Int):Void {
Server.send("gtk_tree_view_set_grid_lines "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function treeSelectionGetSelected(p1:String,p2:Widget,p3:String,fn:Bool->Void):Void {
Server.send("gtk_tree_selection_get_selected "+Server.inString(p1) + " "+Server.inWidget(p2) + " "+Server.inString(p3),fn);
}
public static function treeSelectionGetTreeView(p1:String,fn:String->Void):Void {
Server.send("gtk_tree_selection_get_tree_view "+Server.inString(p1),fn);
}
public static function treeSelectionSelectIter(p1:String,p2:String):Void {
Server.send("gtk_tree_selection_select_iter "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function treeSelectionSelectPath(p1:String,p2:String):Void {
Server.send("gtk_tree_selection_select_path "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function treeSelectionPathIsSelected(p1:String,p2:String,fn:Bool->Void):Void {
Server.send("gtk_tree_selection_path_is_selected "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function treeSelectionSetMode(p1:String,p2:Int):Void {
Server.send("gtk_tree_selection_set_mode "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function treeModelGet(p1:String,p2:String,p3:Int,p4:Dynamic,p5:Int):Void {
Server.send("gtk_tree_model_get "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inDynamic(p4) + " "+Server.inInt(p5));
}
public static function treeModelGetIter(p1:String,p2:String,p3:String,fn:Bool->Void):Void {
Server.send("gtk_tree_model_get_iter "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3),fn);
}
public static function treeModelGetStringFromIter(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_tree_model_get_string_from_iter "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function treeModelGetIterFirst(p1:String,p2:String):Void {
Server.send("gtk_tree_model_get_iter_first "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function treeModelIterNext(p1:String,p2:String,fn:Bool->Void):Void {
Server.send("gtk_tree_model_iter_next "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function treePathNewFromString(p1:String,fn:String->Void):Void {
Server.send("gtk_tree_path_new_from_string "+Server.inString(p1),fn);
}
public static function treePathFree(p1:String):Void {
Server.send("gtk_tree_path_free "+Server.inString(p1));
}
public static function treePathPrev(p1:String,fn:Bool->Void):Void {
Server.send("gtk_tree_path_prev "+Server.inString(p1),fn);
}
public static function treePathNext(p1:String,fn:Bool->Void):Void {
Server.send("gtk_tree_path_next "+Server.inString(p1),fn);
}
public static function treeSortableSetSortColumnId(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_tree_sortable_set_sort_column_id "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function treeStoreAppend(p1:String,p2:String,p3:Widget):Void {
Server.send("gtk_tree_store_append "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inWidget(p3));
}
public static function treeStoreNew(p1:Int,p2:Int,p3:Int,fn:String->Void):Void {
Server.send("gtk_tree_store_new "+Server.inInt(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3),fn);
}
public static function treeStoreSet(p1:String,p2:String,p3:Int,p4:String,p5:Int,p6:String,p7:Int):Void {
Server.send("gtk_tree_store_set "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inString(p4) + " "+Server.inInt(p5) + " "+Server.inString(p6) + " "+Server.inInt(p7));
}
public static function expanderNew(p1:String,fn:String->Void):Void {
Server.send("gtk_expander_new "+Server.inString(p1),fn);
}
public static function expanderNewWithMnemonic(p1:String,fn:String->Void):Void {
Server.send("gtk_expander_new_with_mnemonic "+Server.inString(p1),fn);
}
public static function expanderSetExpanded(p1:String,p2:Bool):Void {
Server.send("gtk_expander_set_expanded "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function expanderGetExpanded(p1:String,fn:Bool->Void):Void {
Server.send("gtk_expander_get_expanded "+Server.inString(p1),fn);
}
public static function expanderSetSpacing(p1:String,p2:Int):Void {
Server.send("gtk_expander_set_spacing "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function expanderGetSpacing(p1:String,fn:Int->Void):Void {
Server.send("gtk_expander_get_spacing "+Server.inString(p1),fn);
}
public static function tooltipsNew(fn:String->Void):Void {
Server.send("gtk_tooltips_new ",fn);
}
public static function tooltipsEnable(p1:String):Void {
Server.send("gtk_tooltips_enable "+Server.inString(p1));
}
public static function tooltipsDisable(p1:String):Void {
Server.send("gtk_tooltips_disable "+Server.inString(p1));
}
public static function tooltipsSetTip(p1:String,p2:String,p3:String,p4:String):Void {
Server.send("gtk_tooltips_set_tip "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inString(p4));
}
public static function tooltipsForceWindow(p1:String):Void {
Server.send("gtk_tooltips_force_window "+Server.inString(p1));
}
public static function widgetSetTooltipText(p1:String,p2:String):Void {
Server.send("gtk_widget_set_tooltip_text "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function calendarGetDate(p1:String,p2:Int,p3:Int,p4:Int):Void {
Server.send("gtk_calendar_get_date "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function init(p1:Widget,p2:Widget):Void {
Server.send("gtk_init "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function widgetShow(p1:String):Void {
Server.send("gtk_widget_show "+Server.inString(p1));
}
public static function widgetShowAll(p1:String):Void {
Server.send("gtk_widget_show_all "+Server.inString(p1));
}
public static function widgetRealize(p1:String):Void {
Server.send("gtk_widget_realize "+Server.inString(p1));
}
public static function widgetUnrealize(p1:String):Void {
Server.send("gtk_widget_unrealize "+Server.inString(p1));
}
public static function widgetHide(p1:String):Void {
Server.send("gtk_widget_hide "+Server.inString(p1));
}
public static function widgetDestroy(p1:String):Void {
Server.send("gtk_widget_destroy "+Server.inString(p1));
}
public static function widgetGrabFocus(p1:String):Void {
Server.send("gtk_widget_grab_focus "+Server.inString(p1));
}
public static function widgetSetSizeRequest(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_widget_set_size_request "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function widgetSizeRequest(p1:String,p2:String):Void {
Server.send("gtk_widget_size_request "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function widgetSetUsize(p1:String,p2:Int,p3:Int):Void {
Server.send("gtk_widget_set_usize "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3));
}
public static function widgetModifyBase(p1:String,p2:Int,p3:String):Void {
Server.send("gtk_widget_modify_base "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function widgetModifyText(p1:String,p2:Int,p3:String):Void {
Server.send("gtk_widget_modify_text "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function widgetModifyBg(p1:String,p2:Int,p3:String):Void {
Server.send("gtk_widget_modify_bg "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function widgetModifyFg(p1:String,p2:Int,p3:String):Void {
Server.send("gtk_widget_modify_fg "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3));
}
public static function widgetModifyFont(p1:String,p2:String):Void {
Server.send("gtk_widget_modify_font "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function widgetSetSensitive(p1:String,p2:Bool):Void {
Server.send("gtk_widget_set_sensitive "+Server.inString(p1) + " "+Server.inBool(p2));
}
public static function widgetAddAccelerator(p1:String,p2:String,p3:String,p4:Int,p5:Int,p6:Int):Void {
Server.send("gtk_widget_add_accelerator "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5) + " "+Server.inInt(p6));
}
public static function widgetGetParent(p1:String,fn:String->Void):Void {
Server.send("gtk_widget_get_parent "+Server.inString(p1),fn);
}
public static function widgetSetName(p1:String,p2:String):Void {
Server.send("gtk_widget_set_name "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function widgetGetSizeRequest(p1:String,p2:String,p3:String):Void {
Server.send("gtk_widget_get_size_request "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function widgetAddEvents(p1:String,p2:Int):Void {
Server.send("gtk_widget_add_events "+Server.inString(p1) + " "+Server.inInt(p2));
}
public static function settingsGetDefault(fn:String->Void):Void {
Server.send("gtk_settings_get_default ",fn);
}
public static function miscSetAlignment(p1:String,p2:Float,p3:Float):Void {
Server.send("gtk_misc_set_alignment "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3));
}
public static function main():Void {
Server.send("gtk_main ");
}
public static function mainIteration(fn:Bool->Void):Void {
Server.send("gtk_main_iteration ",fn);
}
public static function mainIterationDo(p1:Bool,fn:Bool->Void):Void {
Server.send("gtk_main_iteration_do "+Server.inBool(p1),fn);
}
public static function eventsPending(fn:Bool->Void):Void {
Server.send("gtk_events_pending ",fn);
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
public static function rcReparseAll(fn:Bool->Void):Void {
Server.send("gtk_rc_reparse_all ",fn);
}
public static function rcResetStyles(p1:String):Void {
Server.send("gtk_rc_reset_styles "+Server.inString(p1));
}
public static function rcAddDefaultFile(p1:String):Void {
Server.send("gtk_rc_add_default_file "+Server.inString(p1));
}
public static function checkVersion(p1:Int,p2:Int,p3:Int,fn:String->Void):Void {
Server.send("gtk_check_version "+Server.inInt(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3),fn);
}
public static function dragSourceSet(p1:String,p2:Int,p3:String,p4:Int,p5:Int):Void {
Server.send("gtk_drag_source_set "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5));
}
public static function dragDestSet(p1:String,p2:Int,p3:String,p4:Int,p5:Int):Void {
Server.send("gtk_drag_dest_set "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inString(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5));
}
public static function dragFinish(p1:String,p2:Bool,p3:Bool,p4:Int):Void {
Server.send("gtk_drag_finish "+Server.inString(p1) + " "+Server.inBool(p2) + " "+Server.inBool(p3) + " "+Server.inInt(p4));
}
public static function dragSetIconStock(p1:String,p2:String,p3:Int,p4:Int):Void {
Server.send("gtk_drag_set_icon_stock "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function getCurrentEventTime(fn:Int->Void):Void {
Server.send("gtk_get_current_event_time ",fn);
}
public static function signalEmitByName(p1:String,p2:String):Void {
Server.send("gtk_signal_emit_by_name "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function signalConnectWhileAlive(p1:String,p2:String,p3:Dynamic,p4:Dynamic,p5:String):Void {
Server.send("gtk_signal_connect_while_alive "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inDynamic(p3) + " "+Server.inDynamic(p4) + " "+Server.inString(p5));
}
public static function invisibleNew(fn:String->Void):Void {
Server.send("gtk_invisible_new ",fn);
}
public static function targetListNew(p1:Widget,p2:Int,fn:String->Void):Void {
Server.send("gtk_target_list_new "+Server.inWidget(p1) + " "+Server.inInt(p2),fn);
}
public static function targetListAdd(p1:String,p2:String,p3:Int,p4:Int):Void {
Server.send("gtk_target_list_add "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4));
}
public static function targetTableNewFromList(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_target_table_new_from_list "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function alignmentNew(p1:Float,p2:Float,p3:Float,p4:Float,fn:String->Void):Void {
Server.send("gtk_alignment_new "+Server.inFloat(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4),fn);
}
public static function alignmentSet(p1:String,p2:Float,p3:Float,p4:Float,p5:Float):Void {
Server.send("gtk_alignment_set "+Server.inString(p1) + " "+Server.inFloat(p2) + " "+Server.inFloat(p3) + " "+Server.inFloat(p4) + " "+Server.inFloat(p5));
}
public static function alignmentSetPadding(p1:String,p2:Int,p3:Int,p4:Int,p5:Int):Void {
Server.send("gtk_alignment_set_padding "+Server.inString(p1) + " "+Server.inInt(p2) + " "+Server.inInt(p3) + " "+Server.inInt(p4) + " "+Server.inInt(p5));
}
public static function alignmentGetPadding(p1:String,p2:Dynamic,p3:Dynamic,p4:Dynamic,p5:Dynamic):Void {
Server.send("gtk_alignment_get_padding "+Server.inString(p1) + " "+Server.inDynamic(p2) + " "+Server.inDynamic(p3) + " "+Server.inDynamic(p4) + " "+Server.inDynamic(p5));
}
public static function objectSetData(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_object_set_data "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function objectGetData(p1:String,p2:String,fn:Int->Void):Void {
Server.send("gtk_object_get_data "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function objectRef(p1:String,fn:String->Void):Void {
Server.send("gtk_object_ref "+Server.inString(p1),fn);
}
public static function accelGroupNew(fn:String->Void):Void {
Server.send("gtk_accel_group_new ",fn);
}
public static function serverCallback(p1:String,fn:String->Void):Void {
Server.send("gtk_server_callback "+Server.inString(p1),fn);
}
public static function serverCallbackValue(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_server_callback_value "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function serverCfg(p1:String,fn:String->Void):Void {
Server.send("gtk_server_cfg "+Server.inString(p1),fn);
}
public static function serverConnect(p1:String,p2:String,p3:String,fn:String->Void):Void {
Server.send("gtk_server_connect "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3),fn);
}
public static function serverConnectAfter(p1:String,p2:String,p3:String,fn:String->Void):Void {
Server.send("gtk_server_connect_after "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3),fn);
}
public static function serverDefine(p1:String,fn:String->Void):Void {
Server.send("gtk_server_define "+Server.inString(p1),fn);
}
public static function serverDisableCStringEscaping(fn:String->Void):Void {
Server.send("gtk_server_disable_c_string_escaping ",fn);
}
public static function serverDisconnect(fn:String->Void):Void {
Server.send("gtk_server_disconnect ",fn);
}
public static function serverEcho(p1:String,fn:String->Void):Void {
Server.send("gtk_server_echo "+Server.inString(p1),fn);
}
public static function serverEnableCStringEscaping(fn:String->Void):Void {
Server.send("gtk_server_enable_c_string_escaping ",fn);
}
public static function serverExit():Void {
Server.send("gtk_server_exit ");
}
public static function serverFfi(fn:String->Void):Void {
Server.send("gtk_server_ffi ",fn);
}
public static function serverToolkit(fn:String->Void):Void {
Server.send("gtk_server_toolkit ",fn);
}
public static function serverOs(fn:String->Void):Void {
Server.send("gtk_server_os ",fn);
}
public static function serverKey(fn:String->Void):Void {
Server.send("gtk_server_key ",fn);
}
public static function serverMacroVar(p1:String,p2:String,fn:String->Void):Void {
Server.send("gtk_server_macro_var "+Server.inString(p1) + " "+Server.inString(p2),fn);
}
public static function serverMacroDefine(p1:String,fn:String->Void):Void {
Server.send("gtk_server_macro_define "+Server.inString(p1),fn);
}
public static function serverMacroRedefine(p1:String,fn:String->Void):Void {
Server.send("gtk_server_macro_redefine "+Server.inString(p1),fn);
}
public static function serverMouse(p1:String,fn:String->Void):Void {
Server.send("gtk_server_mouse "+Server.inString(p1),fn);
}
public static function serverOpaque(fn:String->Void):Void {
Server.send("gtk_server_opaque ",fn);
}
public static function serverPid(fn:String->Void):Void {
Server.send("gtk_server_pid ",fn);
}
public static function serverRedefine(p1:String,fn:String->Void):Void {
Server.send("gtk_server_redefine "+Server.inString(p1),fn);
}
public static function serverRequire(p1:String,fn:String->Void):Void {
Server.send("gtk_server_require "+Server.inString(p1),fn);
}
public static function serverSetCStringEscaping(p1:String,fn:String->Void):Void {
Server.send("gtk_server_set_c_string_escaping "+Server.inString(p1),fn);
}
public static function serverTimeout(p1:String,p2:String,p3:String,fn:String->Void):Void {
Server.send("gtk_server_timeout "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3),fn);
}
public static function serverTimeoutRemove(p1:String,fn:String->Void):Void {
Server.send("gtk_server_timeout_remove "+Server.inString(p1),fn);
}
public static function serverVersion(fn:String->Void):Void {
Server.send("gtk_server_version ",fn);
}
public static function mozEmbedNew(fn:String->Void):Void {
Server.send("gtk_moz_embed_new ",fn);
}
public static function mozEmbedSetCompPath(p1:String):Void {
Server.send("gtk_moz_embed_set_comp_path "+Server.inString(p1));
}
public static function mozEmbedSetProfilePath(p1:String,p2:String):Void {
Server.send("gtk_moz_embed_set_profile_path "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function mozEmbedLoadUrl(p1:String,p2:String):Void {
Server.send("gtk_moz_embed_load_url "+Server.inString(p1) + " "+Server.inString(p2));
}
public static function mozEmbedOpenStream(p1:String,p2:String,p3:String):Void {
Server.send("gtk_moz_embed_open_stream "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3));
}
public static function mozEmbedAppendData(p1:String,p2:String,p3:Int):Void {
Server.send("gtk_moz_embed_append_data "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inInt(p3));
}
public static function glInit(p1:Widget,p2:Widget):Void {
Server.send("gtk_gl_init "+Server.inWidget(p1) + " "+Server.inWidget(p2));
}
public static function widgetSetGlCapability(p1:String,p2:String,p3:String,p4:Bool,p5:Int,fn:Bool->Void):Void {
Server.send("gtk_widget_set_gl_capability "+Server.inString(p1) + " "+Server.inString(p2) + " "+Server.inString(p3) + " "+Server.inBool(p4) + " "+Server.inInt(p5),fn);
}
public static function widgetGetGlContext(p1:String,fn:String->Void):Void {
Server.send("gtk_widget_get_gl_context "+Server.inString(p1),fn);
}
public static function widgetGetGlWindow(p1:String,fn:String->Void):Void {
Server.send("gtk_widget_get_gl_window "+Server.inString(p1),fn);
}
public static function glAreaNew(p1:String,fn:String->Void):Void {
Server.send("gtk_gl_area_new "+Server.inString(p1),fn);
}
public static function glAreaMakeCurrent(p1:String):Void {
Server.send("gtk_gl_area_make_current "+Server.inString(p1));
}
public static function glAreaSwapBuffers(p1:String):Void {
Server.send("gtk_gl_area_swap_buffers "+Server.inString(p1));
}
}