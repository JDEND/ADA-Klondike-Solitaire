with Ada; use Ada;

with ada.Calendar; use ada.Calendar;
with ada.Calendar.Formatting; use ada.Calendar.Formatting;
with ada.Text_IO; use ada.Text_IO;

with CardTable; use CardTable;

with Gtk.Button; use Gtk.Button;
with Gtk.Label; use Gtk.Label;



package buttons is

   -- Define callbacks for buttons here
   procedure New_Game_Callback (Button : access Gtk_Button_Record'Class);
   procedure Quit_Callback (Button : access Gtk_Button_Record'Class);
   procedure Draw_Callback (Button : access Gtk_Button_Record'Class);

   startTime : Time;
   endTime : Time;

   -- Buttons
   Btn_NewGame : Gtk_Button;
   Btn_Quit : Gtk_Button;
   Btn_Draw : Gtk_Button;

end buttons;
