with Ada; use Ada;
with Gdk.Color; use Gdk.Color;

with buttons; use buttons;

with Glib; use Glib;

with Gtk.Button; use Gtk.Button;
with Gtk.Enums; use Gtk.Enums;
with Gtk.Label; use Gtk.Label;
with Gtk.Main; use Gtk.Main;
with Gtk.Table; use Gtk.Table;
with Gtk.Widget; use Gtk.Widget;
with Gtk.Window; use Gtk.Window;

with CardTable; use CardTable;



procedure main is
   -- Define your variables here
   Window_Main : Gtk_Window;
   Table_Main  : Gtk_Table;

   --Blank Space
   Blank : Gtk_Label;
   Cntr_Blank : Gtk_Label;

   --Pile Placeholders
   diamonds : Gtk_Label;
   hearts : Gtk_Label;
   spades : Gtk_Label;
   clubs : Gtk_Label;

   -- Entry point
   procedure Main is
   begin
      -- Initialize GTK
      Gtk.Main.Init;

      -- Create the main window
      Gtk_New(Window_Main);
      set_title(Window_Main, "Solitaire");
      set_default_size(Window_Main, 800, 600);
      set_border_width(Window_Main, 10);

      -- Create a table for layout
      Gtk_New(Table_Main, 7, 7, False);
      add(Window_Main, Table_Main);
      Table_Main.Override_Background_Color(Gtk.Enums.Gtk_State_Flag_Normal,
                                           (65.0, 192.0, 35.0, 1.0));
      Window_Main.Override_Background_Color(Gtk.Enums.Gtk_State_Flag_Normal,
                                            (65.0, 192.0, 35.0, 1.0));

      -- Add buttons to the table
      Gtk_New(Btn_NewGame, "New Game");
      attach_defaults(Table_Main, Btn_NewGame, 10, 11, 1, 2);

      Gtk_New(Btn_Quit, "Quit");
      Attach_Defaults(Table_Main, Btn_Quit, 9,11,10,11);

      Gtk_New(Btn_Draw, "Draw");
      Attach_Defaults(Table_Main, Btn_Draw, 1,2,1,2);

      --Add placeholders
      Gtk_New(Blank, "");
      Attach_Defaults(Table_Main, Blank, 1,10,2,10);

      Gtk_New(Cntr_Blank, "");
      Attach_Defaults(Table_Main, Cntr_Blank, 4,6,1,11);

      Gtk_New(Stock, "");
      Attach_Defaults(Table_Main, Stock, 2,3,1,2);
      Gtk_New(DiscardPile, "");
      Attach_Defaults(Table_Main, DiscardPile, 3,4,1,2);

      Gtk_New(diamonds, "diamonds");
      Attach_Defaults(Table_Main, diamonds, 6,7,1,2);
      Gtk_New(hearts, "hearts");
      Attach_Defaults(Table_Main, hearts, 7,8,1,2);
      Gtk_New(spades, "spades");
      Attach_Defaults(Table_Main, spades, 8,9,1,2);
      Gtk_New(clubs, "clubs");
      Attach_Defaults(Table_Main, clubs, 9,10,1,2);

      Btn_NewGame.On_Clicked(New_Game_Callback'Access);
      Btn_Quit.On_Clicked(Quit_Callback'Access);
      Btn_Draw.On_Clicked(Draw_Callback'Access);

      -- Show all widgets
      Show_All(Window_Main);
      --disables draw button until new game is started
      Btn_Draw.Set_Visible(False);
      --initializes card deck
      initDrawPile;

      -- Start the main loop
      Gtk.Main.Main;
   end Main;


begin
   Main;
end main;
