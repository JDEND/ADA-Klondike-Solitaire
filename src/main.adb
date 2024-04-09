with Ada; use Ada;

with buttons; use buttons;

with CardTable; use CardTable;

with Gdk.Color; use Gdk.Color;
With GDK.RGBA; use GDK.RGBA;

with Glib; use Glib;

with Gtk.Button; use Gtk.Button;
with Gtk.Enums; use Gtk.Enums;
with Gtk.Label; use Gtk.Label;
with Gtk.Main; use Gtk.Main;
with Gtk.Table; use Gtk.Table;
with Gtk.Widget; use Gtk.Widget;
with Gtk.Window; use Gtk.Window;



procedure main is
   -- Define your variables here
   Window_Main : Gtk_Window;
   Table_Main  : Gtk_Table;

   --Blank Space
   Blank : Gtk_Label;

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

      -- Add buttons to the table
      Gtk_New(Btn_NewGame, "New Game");
      attach_defaults(Table_Main, Btn_NewGame, 10, 11, 1, 2);

      Gtk_New(Btn_Quit, "Quit");
      Attach_Defaults(Table_Main, Btn_Quit, 10,11,18,22);

      Gtk_New(Btn_Draw, "Draw");
      Attach_Defaults(Table_Main, Btn_Draw, 1,2,1,2);

      Gtk_New(Btn_Return, "Reset Draw");
      Attach_Defaults(Table_Main, Btn_Return, 4,5,1,2);

      Gtk_New(Btn_Up, "Up");
      Attach_Defaults(Table_Main, Btn_Up, 9,11,10,11);

      Gtk_New(Btn_Down, "Down");
      Attach_Defaults(Table_Main, Btn_Down, 9,11,12,13);

      Gtk_New(Btn_Left, "Left");
      Attach_Defaults(Table_Main, Btn_Left, 9,10,11,12);

      Gtk_New(Btn_Right, "Right");
      Attach_Defaults(Table_Main, Btn_Right, 10,11,11,12);

      Gtk_New(Btn_SelectDrop, "Select");
      Attach_Defaults(Table_Main, Btn_SelectDrop, 9,11,9,10);

      --Add placeholders
      Gtk_New(Blank, "");
      Attach_Defaults(Table_Main, Blank, 1,10,2,10);

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

      --initializes card deck
      initDrawPile;
      initializeTable;
      for i in 0..18 loop
         for j in 0..6 loop
            Attach_Defaults(Table_Main, tableau(i,j), Guint(j+1), Guint(j+2),
                            Guint(i+2), Guint(i+3));
         end loop;
      end loop;

      Btn_NewGame.On_Clicked(New_Game_Callback'Access);
      Btn_Quit.On_Clicked(Quit_Callback'Access);
      Btn_Draw.On_Clicked(Draw_Callback'Access);
      Btn_Return.On_Clicked(Return_Callback'Access);
      Btn_SelectDrop.On_Clicked(select_Callback'Access);
      Btn_Down.On_Clicked(down_Callback'Access);
      Btn_Up.On_Clicked(up_Callback'Access);
      Btn_Left.On_Clicked(left_Callback'Access);
      Btn_Right.On_Clicked(right_Callback'Access);

      -- Show all widgets
      Show_All(Window_Main);
      --disables draw button until new game is started
      Btn_Draw.Set_Visible(False);
      Btn_Return.Set_Visible(False);
      Btn_Down.Set_Visible(False);
      Btn_Up.Set_Visible(False);
      Btn_Left.Set_Visible(False);
      Btn_Right.Set_Visible(False);
      Btn_SelectDrop.Set_Visible(False);

      -- Start the main loop
      Gtk.Main.Main;
   end Main;
begin
   Main;
end main;
