with Ada; use Ada;

with ada.Calendar; use ada.Calendar;
with ada.Calendar.Formatting; use ada.Calendar.Formatting;
with ada.Text_IO; use ada.Text_IO;

with CardTable; use CardTable;

with Gtk.Button; use Gtk.Button;
with Gtk.Label; use Gtk.Label;

with cards; use cards;


package buttons is

   -- Define callbacks for buttons here
   procedure New_Game_Callback (Button : access Gtk_Button_Record'Class);
   procedure Quit_Callback (Button : access Gtk_Button_Record'Class);
   procedure Draw_Callback (Button : access Gtk_Button_Record'Class);
   procedure Return_Callback (Button : access Gtk_Button_Record'Class);
   procedure select_Callback (Button : access Gtk_Button_Record'Class);
   procedure up_Callback (Button : access Gtk_Button_Record'Class);
   procedure down_Callback (Button : access Gtk_Button_Record'Class);
   procedure left_Callback (Button : access Gtk_Button_Record'Class);
   procedure right_Callback (Button : access Gtk_Button_Record'Class);

   procedure makeButtonsStart;

   startTime : Time;
   endTime : Time;

   -- Buttons
   Btn_NewGame : Gtk_Button;
   Btn_Quit : Gtk_Button;
   Btn_Draw : Gtk_Button;
   Btn_Return : Gtk_Button;

   --controls
   Btn_Up : Gtk_Button;
   Btn_Down : Gtk_Button;
   Btn_Left : Gtk_Button;
   Btn_Right : Gtk_Button;
   Btn_SelectDrop : Gtk_Button;

end buttons;
