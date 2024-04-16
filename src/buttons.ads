with Ada; use Ada;

with ada.Calendar; use ada.Calendar;
with ada.Calendar.Formatting; use ada.Calendar.Formatting;
with ada.Text_IO; use ada.Text_IO;

with CardTable; use CardTable;

with Gtk.Button; use Gtk.Button;
with Gtk.Label; use Gtk.Label;
with Gtk.Enums; use Gtk.Enums;

with cards; use cards;

with ada.Containers.Synchronized_Queue_Interfaces;
with ada.Containers.Unbounded_Synchronized_Queues;
with Gtk.Table; use Gtk.Table;
with Gtk.Window; use Gtk.Window;


package buttons is

   --Button callbacks
   --game operation buttons
   procedure New_Game_Callback (Button : access Gtk_Button_Record'Class);
   procedure Quit_Callback (Button : access Gtk_Button_Record'Class);
   procedure Draw_Callback (Button : access Gtk_Button_Record'Class);
   procedure Return_Callback (Button : access Gtk_Button_Record'Class);
   --gameplay buttons
   procedure select_Callback (Button : access Gtk_Button_Record'Class);
   procedure up_Callback (Button : access Gtk_Button_Record'Class);
   procedure down_Callback (Button : access Gtk_Button_Record'Class);
   procedure left_Callback (Button : access Gtk_Button_Record'Class);
   procedure right_Callback (Button : access Gtk_Button_Record'Class);

   procedure makeButtonsStart;
   procedure delCard;

   --timers
   startTime : Time;
   endTime : Time;

   -- operation buttons
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

   --position markers
   pos_x : Integer;
   pos_y : Integer;
   selection_x : Integer;
   selection_y : Integer;

   --check for game win
   procedure didWin;
   Window_Win : Gtk_window;
   Table_Win : Gtk_Table;

end buttons;
