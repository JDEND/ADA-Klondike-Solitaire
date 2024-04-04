pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E075 : Short_Integer; pragma Import (Ada, E075, "system__os_lib_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__exceptions_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__io_exceptions_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "ada__strings__maps_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__strings__maps__constants_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "interfaces__c_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__object_reader_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "system__dwarf_lines_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__soft_links__initialize_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E371 : Short_Integer; pragma Import (Ada, E371, "ada__numerics_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__tags_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "ada__streams_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "gnat_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "interfaces__c__strings_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "system__file_control_block_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "system__finalization_root_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "ada__finalization_E");
   E367 : Short_Integer; pragma Import (Ada, E367, "system__file_io_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__storage_pools_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "system__finalization_masters_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "system__storage_pools__subpools_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "ada__calendar_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "ada__calendar__time_zones_E");
   E363 : Short_Integer; pragma Import (Ada, E363, "ada__text_io_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "system__pool_global_E");
   E375 : Short_Integer; pragma Import (Ada, E375, "system__random_seed_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "glib_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "gtkada__types_E");
   E377 : Short_Integer; pragma Import (Ada, E377, "cards_E");
   E381 : Short_Integer; pragma Import (Ada, E381, "deck_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "gdk__frame_timings_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "glib__glist_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "gdk__visual_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "glib__gslist_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "gtkada__c_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "glib__object_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "glib__type_conversion_hooks_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "glib__types_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "glib__values_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "gtkada__bindings_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "cairo_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "cairo__region_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "gdk__rectangle_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "glib__generic_properties_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "gdk__color_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "gdk__rgba_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "glib__key_file_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "glib__properties_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "gdk__device_tool_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "gdk__drawing_context_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "gdk__event_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "glib__string_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "glib__variant_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "glib__g_icon_E");
   E393 : Short_Integer; pragma Import (Ada, E393, "gtk__actionable_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "gtk__builder_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "gtk__buildable_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "gtk__cell_area_context_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "gtk__css_section_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "gtk__enums_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "gtk__orientable_E");
   E315 : Short_Integer; pragma Import (Ada, E315, "gtk__paper_size_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "gtk__page_setup_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "gtk__print_settings_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "gtk__target_entry_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "gtk__target_list_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "gtk__text_mark_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "pango__enums_E");
   E249 : Short_Integer; pragma Import (Ada, E249, "pango__attributes_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "pango__font_metrics_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "pango__language_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "pango__font_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "gtk__text_attributes_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "gtk__text_tag_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "pango__font_face_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "pango__font_family_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "pango__fontset_E");
   E243 : Short_Integer; pragma Import (Ada, E243, "pango__matrix_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "pango__context_E");
   E245 : Short_Integer; pragma Import (Ada, E245, "pango__font_map_E");
   E251 : Short_Integer; pragma Import (Ada, E251, "pango__tabs_E");
   E247 : Short_Integer; pragma Import (Ada, E247, "pango__layout_E");
   E317 : Short_Integer; pragma Import (Ada, E317, "gtk__print_context_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "gdk__frame_clock_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "gdk__monitor_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "gdk__display_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "gdk__glcontext_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "gdk__pixbuf_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "gdk__screen_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "gdk__device_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "gdk__drag_contexts_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "gdk__window_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "glib__action_group_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "gtk__accel_group_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "gtk__adjustment_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "gtk__cell_editable_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "gtk__editable_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "gtk__entry_buffer_E");
   E299 : Short_Integer; pragma Import (Ada, E299, "gtk__icon_source_E");
   E319 : Short_Integer; pragma Import (Ada, E319, "gtk__print_operation_preview_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "gtk__selection_data_E");
   E337 : Short_Integer; pragma Import (Ada, E337, "gtk__clipboard_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "gtk__style_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "gtk__scrollable_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "gtk__text_iter_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "gtk__text_tag_table_E");
   E293 : Short_Integer; pragma Import (Ada, E293, "gtk__tree_model_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "gtk__widget_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "gtk__cell_renderer_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "gtk__cell_layout_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "gtk__cell_area_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "gtk__container_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "gtk__bin_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "gtk__box_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "gtk__entry_completion_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "gtk__misc_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "gtk__notebook_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "gtk__status_bar_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "gtk__style_provider_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "gtk__settings_E");
   E301 : Short_Integer; pragma Import (Ada, E301, "gtk__style_context_E");
   E297 : Short_Integer; pragma Import (Ada, E297, "gtk__icon_set_E");
   E295 : Short_Integer; pragma Import (Ada, E295, "gtk__image_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "gtk__gentry_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "gtk__text_child_anchor_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "gtk__text_buffer_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "gtk__text_view_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "gtk__window_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "gtk__dialog_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "gtk__print_operation_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "gtk__arguments_E");
   E387 : Short_Integer; pragma Import (Ada, E387, "glib__menu_model_E");
   E391 : Short_Integer; pragma Import (Ada, E391, "gtk__action_E");
   E395 : Short_Integer; pragma Import (Ada, E395, "gtk__activatable_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "gtk__button_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "gtk__main_E");
   E389 : Short_Integer; pragma Import (Ada, E389, "gtk__menu_item_E");
   E397 : Short_Integer; pragma Import (Ada, E397, "gtk__menu_shell_E");
   E385 : Short_Integer; pragma Import (Ada, E385, "gtk__menu_E");
   E383 : Short_Integer; pragma Import (Ada, E383, "gtk__label_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "cardtable_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "buttons_E");
   E401 : Short_Integer; pragma Import (Ada, E401, "gtk__table_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E401 := E401 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "gtk__table__finalize_spec");
      begin
         F1;
      end;
      E383 := E383 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "gtk__label__finalize_spec");
      begin
         F2;
      end;
      E385 := E385 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "gtk__menu__finalize_spec");
      begin
         F3;
      end;
      E397 := E397 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gtk__menu_shell__finalize_spec");
      begin
         F4;
      end;
      E389 := E389 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "gtk__menu_item__finalize_spec");
      begin
         F5;
      end;
      E399 := E399 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "gtk__button__finalize_spec");
      begin
         F6;
      end;
      E391 := E391 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "gtk__action__finalize_spec");
      begin
         F7;
      end;
      E387 := E387 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "glib__menu_model__finalize_spec");
      begin
         F8;
      end;
      E263 := E263 - 1;
      E196 := E196 - 1;
      E293 := E293 - 1;
      E331 := E331 - 1;
      E343 := E343 - 1;
      E335 := E335 - 1;
      E301 := E301 - 1;
      E220 := E220 - 1;
      E323 := E323 - 1;
      E309 := E309 - 1;
      E307 := E307 - 1;
      E273 := E273 - 1;
      E283 := E283 - 1;
      E281 := E281 - 1;
      E180 := E180 - 1;
      E257 := E257 - 1;
      E337 := E337 - 1;
      E291 := E291 - 1;
      E285 := E285 - 1;
      E259 := E259 - 1;
      E214 := E214 - 1;
      E188 := E188 - 1;
      E200 := E200 - 1;
      E167 := E167 - 1;
      E186 := E186 - 1;
      E157 := E157 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "gtk__print_operation__finalize_spec");
      begin
         F9;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "gtk__dialog__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "gtk__window__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "gtk__text_view__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gtk__text_buffer__finalize_spec");
      begin
         F13;
      end;
      E339 := E339 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gtk__text_child_anchor__finalize_spec");
      begin
         F14;
      end;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gtk__gentry__finalize_spec");
      begin
         F15;
      end;
      E295 := E295 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gtk__image__finalize_spec");
      begin
         F16;
      end;
      E297 := E297 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gtk__icon_set__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "gtk__style_context__finalize_spec");
      begin
         F18;
      end;
      E182 := E182 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "gtk__settings__finalize_spec");
      begin
         F19;
      end;
      declare
         procedure F20;
         pragma Import (Ada, F20, "gtk__status_bar__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "gtk__notebook__finalize_spec");
      begin
         F21;
      end;
      E305 := E305 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "gtk__misc__finalize_spec");
      begin
         F22;
      end;
      declare
         procedure F23;
         pragma Import (Ada, F23, "gtk__entry_completion__finalize_spec");
      begin
         F23;
      end;
      E253 := E253 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "gtk__box__finalize_spec");
      begin
         F24;
      end;
      E271 := E271 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "gtk__bin__finalize_spec");
      begin
         F25;
      end;
      declare
         procedure F26;
         pragma Import (Ada, F26, "gtk__container__finalize_spec");
      begin
         F26;
      end;
      declare
         procedure F27;
         pragma Import (Ada, F27, "gtk__cell_area__finalize_spec");
      begin
         F27;
      end;
      declare
         procedure F28;
         pragma Import (Ada, F28, "gtk__cell_renderer__finalize_spec");
      begin
         F28;
      end;
      declare
         procedure F29;
         pragma Import (Ada, F29, "gtk__widget__finalize_spec");
      begin
         F29;
      end;
      declare
         procedure F30;
         pragma Import (Ada, F30, "gtk__tree_model__finalize_spec");
      begin
         F30;
      end;
      declare
         procedure F31;
         pragma Import (Ada, F31, "gtk__text_tag_table__finalize_spec");
      begin
         F31;
      end;
      declare
         procedure F32;
         pragma Import (Ada, F32, "gtk__style__finalize_spec");
      begin
         F32;
      end;
      declare
         procedure F33;
         pragma Import (Ada, F33, "gtk__clipboard__finalize_spec");
      begin
         F33;
      end;
      E218 := E218 - 1;
      declare
         procedure F34;
         pragma Import (Ada, F34, "gtk__selection_data__finalize_spec");
      begin
         F34;
      end;
      E299 := E299 - 1;
      declare
         procedure F35;
         pragma Import (Ada, F35, "gtk__icon_source__finalize_spec");
      begin
         F35;
      end;
      declare
         procedure F36;
         pragma Import (Ada, F36, "gtk__entry_buffer__finalize_spec");
      begin
         F36;
      end;
      declare
         procedure F37;
         pragma Import (Ada, F37, "gtk__adjustment__finalize_spec");
      begin
         F37;
      end;
      declare
         procedure F38;
         pragma Import (Ada, F38, "gtk__accel_group__finalize_spec");
      begin
         F38;
      end;
      declare
         procedure F39;
         pragma Import (Ada, F39, "gdk__drag_contexts__finalize_spec");
      begin
         F39;
      end;
      declare
         procedure F40;
         pragma Import (Ada, F40, "gdk__device__finalize_spec");
      begin
         F40;
      end;
      E184 := E184 - 1;
      declare
         procedure F41;
         pragma Import (Ada, F41, "gdk__screen__finalize_spec");
      begin
         F41;
      end;
      E204 := E204 - 1;
      declare
         procedure F42;
         pragma Import (Ada, F42, "gdk__pixbuf__finalize_spec");
      begin
         F42;
      end;
      E269 := E269 - 1;
      declare
         procedure F43;
         pragma Import (Ada, F43, "gdk__glcontext__finalize_spec");
      begin
         F43;
      end;
      declare
         procedure F44;
         pragma Import (Ada, F44, "gdk__display__finalize_spec");
      begin
         F44;
      end;
      declare
         procedure F45;
         pragma Import (Ada, F45, "gdk__monitor__finalize_spec");
      begin
         F45;
      end;
      declare
         procedure F46;
         pragma Import (Ada, F46, "gdk__frame_clock__finalize_spec");
      begin
         F46;
      end;
      E317 := E317 - 1;
      declare
         procedure F47;
         pragma Import (Ada, F47, "gtk__print_context__finalize_spec");
      begin
         F47;
      end;
      E247 := E247 - 1;
      declare
         procedure F48;
         pragma Import (Ada, F48, "pango__layout__finalize_spec");
      begin
         F48;
      end;
      E251 := E251 - 1;
      declare
         procedure F49;
         pragma Import (Ada, F49, "pango__tabs__finalize_spec");
      begin
         F49;
      end;
      E245 := E245 - 1;
      declare
         procedure F50;
         pragma Import (Ada, F50, "pango__font_map__finalize_spec");
      begin
         F50;
      end;
      E227 := E227 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "pango__context__finalize_spec");
      begin
         F51;
      end;
      E241 := E241 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "pango__fontset__finalize_spec");
      begin
         F52;
      end;
      E237 := E237 - 1;
      declare
         procedure F53;
         pragma Import (Ada, F53, "pango__font_family__finalize_spec");
      begin
         F53;
      end;
      E239 := E239 - 1;
      declare
         procedure F54;
         pragma Import (Ada, F54, "pango__font_face__finalize_spec");
      begin
         F54;
      end;
      E329 := E329 - 1;
      declare
         procedure F55;
         pragma Import (Ada, F55, "gtk__text_tag__finalize_spec");
      begin
         F55;
      end;
      E231 := E231 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "pango__font__finalize_spec");
      begin
         F56;
      end;
      E235 := E235 - 1;
      declare
         procedure F57;
         pragma Import (Ada, F57, "pango__language__finalize_spec");
      begin
         F57;
      end;
      E233 := E233 - 1;
      declare
         procedure F58;
         pragma Import (Ada, F58, "pango__font_metrics__finalize_spec");
      begin
         F58;
      end;
      E249 := E249 - 1;
      declare
         procedure F59;
         pragma Import (Ada, F59, "pango__attributes__finalize_spec");
      begin
         F59;
      end;
      E341 := E341 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "gtk__text_mark__finalize_spec");
      begin
         F60;
      end;
      E222 := E222 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "gtk__target_list__finalize_spec");
      begin
         F61;
      end;
      E321 := E321 - 1;
      declare
         procedure F62;
         pragma Import (Ada, F62, "gtk__print_settings__finalize_spec");
      begin
         F62;
      end;
      E311 := E311 - 1;
      declare
         procedure F63;
         pragma Import (Ada, F63, "gtk__page_setup__finalize_spec");
      begin
         F63;
      end;
      E315 := E315 - 1;
      declare
         procedure F64;
         pragma Import (Ada, F64, "gtk__paper_size__finalize_spec");
      begin
         F64;
      end;
      E303 := E303 - 1;
      declare
         procedure F65;
         pragma Import (Ada, F65, "gtk__css_section__finalize_spec");
      begin
         F65;
      end;
      E287 := E287 - 1;
      declare
         procedure F66;
         pragma Import (Ada, F66, "gtk__cell_area_context__finalize_spec");
      begin
         F66;
      end;
      E216 := E216 - 1;
      declare
         procedure F67;
         pragma Import (Ada, F67, "gtk__builder__finalize_spec");
      begin
         F67;
      end;
      E210 := E210 - 1;
      declare
         procedure F68;
         pragma Import (Ada, F68, "glib__variant__finalize_spec");
      begin
         F68;
      end;
      E267 := E267 - 1;
      declare
         procedure F69;
         pragma Import (Ada, F69, "gdk__drawing_context__finalize_spec");
      begin
         F69;
      end;
      E171 := E171 - 1;
      declare
         procedure F70;
         pragma Import (Ada, F70, "gdk__device_tool__finalize_spec");
      begin
         F70;
      end;
      E134 := E134 - 1;
      declare
         procedure F71;
         pragma Import (Ada, F71, "glib__object__finalize_spec");
      begin
         F71;
      end;
      E202 := E202 - 1;
      declare
         procedure F72;
         pragma Import (Ada, F72, "gdk__frame_timings__finalize_spec");
      begin
         F72;
      end;
      E377 := E377 - 1;
      declare
         procedure F73;
         pragma Import (Ada, F73, "cards__finalize_spec");
      begin
         F73;
      end;
      E106 := E106 - 1;
      declare
         procedure F74;
         pragma Import (Ada, F74, "glib__finalize_spec");
      begin
         F74;
      end;
      E124 := E124 - 1;
      declare
         procedure F75;
         pragma Import (Ada, F75, "system__pool_global__finalize_spec");
      begin
         F75;
      end;
      E363 := E363 - 1;
      declare
         procedure F76;
         pragma Import (Ada, F76, "ada__text_io__finalize_spec");
      begin
         F76;
      end;
      E128 := E128 - 1;
      declare
         procedure F77;
         pragma Import (Ada, F77, "system__storage_pools__subpools__finalize_spec");
      begin
         F77;
      end;
      E115 := E115 - 1;
      declare
         procedure F78;
         pragma Import (Ada, F78, "system__finalization_masters__finalize_spec");
      begin
         F78;
      end;
      declare
         procedure F79;
         pragma Import (Ada, F79, "system__file_io__finalize_body");
      begin
         E367 := E367 - 1;
         F79;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E070 := E070 + 1;
      Ada.Strings'Elab_Spec;
      E055 := E055 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E057 := E057 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E061 := E061 + 1;
      Interfaces.C'Elab_Spec;
      E045 := E045 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Object_Reader'Elab_Spec;
      E081 := E081 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E050 := E050 + 1;
      System.Os_Lib'Elab_Body;
      E075 := E075 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E021 := E021 + 1;
      E013 := E013 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      E008 := E008 + 1;
      Ada.Numerics'Elab_Spec;
      E371 := E371 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E006 := E006 + 1;
      Ada.Streams'Elab_Spec;
      E113 := E113 + 1;
      Gnat'Elab_Spec;
      E139 := E139 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E111 := E111 + 1;
      System.File_Control_Block'Elab_Spec;
      E368 := E368 + 1;
      System.Finalization_Root'Elab_Spec;
      E120 := E120 + 1;
      Ada.Finalization'Elab_Spec;
      E118 := E118 + 1;
      System.File_Io'Elab_Body;
      E367 := E367 + 1;
      System.Storage_Pools'Elab_Spec;
      E122 := E122 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E115 := E115 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E128 := E128 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E345 := E345 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E351 := E351 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E363 := E363 + 1;
      System.Pool_Global'Elab_Spec;
      E124 := E124 + 1;
      System.Random_Seed'Elab_Body;
      E375 := E375 + 1;
      Glib'Elab_Spec;
      Gtkada.Types'Elab_Spec;
      E109 := E109 + 1;
      E106 := E106 + 1;
      cards'elab_spec;
      cards'elab_body;
      E377 := E377 + 1;
      Deck'Elab_Spec;
      Deck'Elab_Body;
      E381 := E381 + 1;
      Gdk.Frame_Timings'Elab_Spec;
      Gdk.Frame_Timings'Elab_Body;
      E202 := E202 + 1;
      E150 := E150 + 1;
      Gdk.Visual'Elab_Body;
      E190 := E190 + 1;
      E152 := E152 + 1;
      E144 := E144 + 1;
      Glib.Object'Elab_Spec;
      E136 := E136 + 1;
      Glib.Values'Elab_Body;
      E148 := E148 + 1;
      E138 := E138 + 1;
      Glib.Object'Elab_Body;
      E134 := E134 + 1;
      E146 := E146 + 1;
      E163 := E163 + 1;
      E165 := E165 + 1;
      E175 := E175 + 1;
      Glib.Generic_Properties'Elab_Spec;
      Glib.Generic_Properties'Elab_Body;
      E159 := E159 + 1;
      Gdk.Color'Elab_Spec;
      E198 := E198 + 1;
      E178 := E178 + 1;
      E313 := E313 + 1;
      E173 := E173 + 1;
      Gdk.Device_Tool'Elab_Spec;
      Gdk.Device_Tool'Elab_Body;
      E171 := E171 + 1;
      Gdk.Drawing_Context'Elab_Spec;
      Gdk.Drawing_Context'Elab_Body;
      E267 := E267 + 1;
      E169 := E169 + 1;
      E212 := E212 + 1;
      Glib.Variant'Elab_Spec;
      Glib.Variant'Elab_Body;
      E210 := E210 + 1;
      E275 := E275 + 1;
      Gtk.Actionable'Elab_Spec;
      E393 := E393 + 1;
      Gtk.Builder'Elab_Spec;
      Gtk.Builder'Elab_Body;
      E216 := E216 + 1;
      E255 := E255 + 1;
      Gtk.Cell_Area_Context'Elab_Spec;
      Gtk.Cell_Area_Context'Elab_Body;
      E287 := E287 + 1;
      Gtk.Css_Section'Elab_Spec;
      Gtk.Css_Section'Elab_Body;
      E303 := E303 + 1;
      E192 := E192 + 1;
      Gtk.Orientable'Elab_Spec;
      E261 := E261 + 1;
      Gtk.Paper_Size'Elab_Spec;
      Gtk.Paper_Size'Elab_Body;
      E315 := E315 + 1;
      Gtk.Page_Setup'Elab_Spec;
      Gtk.Page_Setup'Elab_Body;
      E311 := E311 + 1;
      Gtk.Print_Settings'Elab_Spec;
      Gtk.Print_Settings'Elab_Body;
      E321 := E321 + 1;
      E224 := E224 + 1;
      Gtk.Target_List'Elab_Spec;
      Gtk.Target_List'Elab_Body;
      E222 := E222 + 1;
      Gtk.Text_Mark'Elab_Spec;
      Gtk.Text_Mark'Elab_Body;
      E341 := E341 + 1;
      E229 := E229 + 1;
      Pango.Attributes'Elab_Spec;
      Pango.Attributes'Elab_Body;
      E249 := E249 + 1;
      Pango.Font_Metrics'Elab_Spec;
      Pango.Font_Metrics'Elab_Body;
      E233 := E233 + 1;
      Pango.Language'Elab_Spec;
      Pango.Language'Elab_Body;
      E235 := E235 + 1;
      Pango.Font'Elab_Spec;
      Pango.Font'Elab_Body;
      E231 := E231 + 1;
      E327 := E327 + 1;
      Gtk.Text_Tag'Elab_Spec;
      Gtk.Text_Tag'Elab_Body;
      E329 := E329 + 1;
      Pango.Font_Face'Elab_Spec;
      Pango.Font_Face'Elab_Body;
      E239 := E239 + 1;
      Pango.Font_Family'Elab_Spec;
      Pango.Font_Family'Elab_Body;
      E237 := E237 + 1;
      Pango.Fontset'Elab_Spec;
      Pango.Fontset'Elab_Body;
      E241 := E241 + 1;
      E243 := E243 + 1;
      Pango.Context'Elab_Spec;
      Pango.Context'Elab_Body;
      E227 := E227 + 1;
      Pango.Font_Map'Elab_Spec;
      Pango.Font_Map'Elab_Body;
      E245 := E245 + 1;
      Pango.Tabs'Elab_Spec;
      Pango.Tabs'Elab_Body;
      E251 := E251 + 1;
      Pango.Layout'Elab_Spec;
      Pango.Layout'Elab_Body;
      E247 := E247 + 1;
      Gtk.Print_Context'Elab_Spec;
      Gtk.Print_Context'Elab_Body;
      E317 := E317 + 1;
      Gdk.Frame_Clock'Elab_Spec;
      Gdk.Monitor'Elab_Spec;
      Gdk.Display'Elab_Spec;
      Gdk.Glcontext'Elab_Spec;
      Gdk.Glcontext'Elab_Body;
      E269 := E269 + 1;
      Gdk.Pixbuf'Elab_Spec;
      E204 := E204 + 1;
      Gdk.Screen'Elab_Spec;
      Gdk.Screen'Elab_Body;
      E184 := E184 + 1;
      Gdk.Device'Elab_Spec;
      Gdk.Drag_Contexts'Elab_Spec;
      Gdk.Window'Elab_Spec;
      E265 := E265 + 1;
      Gtk.Accel_Group'Elab_Spec;
      Gtk.Adjustment'Elab_Spec;
      Gtk.Cell_Editable'Elab_Spec;
      Gtk.Entry_Buffer'Elab_Spec;
      Gtk.Icon_Source'Elab_Spec;
      Gtk.Icon_Source'Elab_Body;
      E299 := E299 + 1;
      Gtk.Selection_Data'Elab_Spec;
      Gtk.Selection_Data'Elab_Body;
      E218 := E218 + 1;
      Gtk.Clipboard'Elab_Spec;
      Gtk.Style'Elab_Spec;
      Gtk.Scrollable'Elab_Spec;
      E333 := E333 + 1;
      E325 := E325 + 1;
      Gtk.Text_Tag_Table'Elab_Spec;
      Gtk.Tree_Model'Elab_Spec;
      Gtk.Widget'Elab_Spec;
      Gtk.Cell_Renderer'Elab_Spec;
      E289 := E289 + 1;
      Gtk.Cell_Area'Elab_Spec;
      Gtk.Container'Elab_Spec;
      Gtk.Bin'Elab_Spec;
      Gtk.Bin'Elab_Body;
      E271 := E271 + 1;
      Gtk.Box'Elab_Spec;
      Gtk.Box'Elab_Body;
      E253 := E253 + 1;
      Gtk.Entry_Completion'Elab_Spec;
      Gtk.Misc'Elab_Spec;
      Gtk.Misc'Elab_Body;
      E305 := E305 + 1;
      Gtk.Notebook'Elab_Spec;
      Gtk.Status_Bar'Elab_Spec;
      E194 := E194 + 1;
      Gtk.Settings'Elab_Spec;
      Gtk.Settings'Elab_Body;
      E182 := E182 + 1;
      Gtk.Style_Context'Elab_Spec;
      Gtk.Icon_Set'Elab_Spec;
      Gtk.Icon_Set'Elab_Body;
      E297 := E297 + 1;
      Gtk.Image'Elab_Spec;
      Gtk.Image'Elab_Body;
      E295 := E295 + 1;
      Gtk.Gentry'Elab_Spec;
      Gtk.Text_Child_Anchor'Elab_Spec;
      Gtk.Text_Child_Anchor'Elab_Body;
      E339 := E339 + 1;
      Gtk.Text_Buffer'Elab_Spec;
      Gtk.Text_View'Elab_Spec;
      Gtk.Window'Elab_Spec;
      Gtk.Dialog'Elab_Spec;
      Gtk.Print_Operation'Elab_Spec;
      E161 := E161 + 1;
      Gdk.Device'Elab_Body;
      E157 := E157 + 1;
      Gdk.Display'Elab_Body;
      E186 := E186 + 1;
      Gdk.Drag_Contexts'Elab_Body;
      E167 := E167 + 1;
      Gdk.Frame_Clock'Elab_Body;
      E200 := E200 + 1;
      Gdk.Monitor'Elab_Body;
      E188 := E188 + 1;
      E208 := E208 + 1;
      Gtk.Accel_Group'Elab_Body;
      E214 := E214 + 1;
      Gtk.Adjustment'Elab_Body;
      E259 := E259 + 1;
      Gtk.Cell_Area'Elab_Body;
      E285 := E285 + 1;
      E277 := E277 + 1;
      Gtk.Cell_Renderer'Elab_Body;
      E291 := E291 + 1;
      Gtk.Clipboard'Elab_Body;
      E337 := E337 + 1;
      Gtk.Container'Elab_Body;
      E257 := E257 + 1;
      Gtk.Dialog'Elab_Body;
      E180 := E180 + 1;
      E279 := E279 + 1;
      Gtk.Entry_Buffer'Elab_Body;
      E281 := E281 + 1;
      Gtk.Entry_Completion'Elab_Body;
      E283 := E283 + 1;
      Gtk.Gentry'Elab_Body;
      E273 := E273 + 1;
      Gtk.Notebook'Elab_Body;
      E307 := E307 + 1;
      Gtk.Print_Operation'Elab_Body;
      E309 := E309 + 1;
      E319 := E319 + 1;
      Gtk.Status_Bar'Elab_Body;
      E323 := E323 + 1;
      Gtk.Style'Elab_Body;
      E220 := E220 + 1;
      Gtk.Style_Context'Elab_Body;
      E301 := E301 + 1;
      Gtk.Text_Buffer'Elab_Body;
      E335 := E335 + 1;
      Gtk.Text_Tag_Table'Elab_Body;
      E343 := E343 + 1;
      Gtk.Text_View'Elab_Body;
      E331 := E331 + 1;
      Gtk.Tree_Model'Elab_Body;
      E293 := E293 + 1;
      Gtk.Widget'Elab_Body;
      E196 := E196 + 1;
      Gtk.Window'Elab_Body;
      E263 := E263 + 1;
      Glib.Menu_Model'Elab_Spec;
      Glib.Menu_Model'Elab_Body;
      E387 := E387 + 1;
      Gtk.Action'Elab_Spec;
      Gtk.Action'Elab_Body;
      E391 := E391 + 1;
      Gtk.Activatable'Elab_Spec;
      E395 := E395 + 1;
      Gtk.Button'Elab_Spec;
      Gtk.Button'Elab_Body;
      E399 := E399 + 1;
      E154 := E154 + 1;
      Gtk.Menu_Item'Elab_Spec;
      Gtk.Menu_Item'Elab_Body;
      E389 := E389 + 1;
      Gtk.Menu_Shell'Elab_Spec;
      Gtk.Menu_Shell'Elab_Body;
      E397 := E397 + 1;
      Gtk.Menu'Elab_Spec;
      Gtk.Menu'Elab_Body;
      E385 := E385 + 1;
      Gtk.Label'Elab_Spec;
      Gtk.Label'Elab_Body;
      E383 := E383 + 1;
      Cardtable'Elab_Spec;
      Cardtable'Elab_Body;
      E370 := E370 + 1;
      E103 := E103 + 1;
      Gtk.Table'Elab_Spec;
      Gtk.Table'Elab_Body;
      E401 := E401 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/jared/Documents/Wayne/CSC3200/Final/obj/cards.o
   --   /home/jared/Documents/Wayne/CSC3200/Final/obj/deck.o
   --   /home/jared/Documents/Wayne/CSC3200/Final/obj/cardtable.o
   --   /home/jared/Documents/Wayne/CSC3200/Final/obj/buttons.o
   --   /home/jared/Documents/Wayne/CSC3200/Final/obj/main.o
   --   -L/home/jared/Documents/Wayne/CSC3200/Final/obj/
   --   -L/home/jared/Documents/Wayne/CSC3200/Final/obj/
   --   -L/usr/lib/gtkada/gtkada.static/gtkada/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/10/adalib/
   --   -shared
   --   -shared-libgcc
   --   -shared-libgcc
   --   -shared-libgcc
   --   -lgnat-10
   --   -ldl
--  END Object file/option list   

end ada_main;
