with Gtk.Main;
package body buttons is

   procedure New_Game_Callback (Button : access Gtk_Button_Record'Class) is
   begin

      --starts a new game clock, resets and shuffles the game deck, and sets the
      --initial draw location back to zero, will have other functions in the
      --future 04/02/24 - GV6507
      startTime := Clock;
      --  Put_Line(Image(startTime));
      initDrawPile;
      shuffleDeck;
      drawPileLocation := -1;
      DiscardPile.Set_Text("");
   end New_Game_Callback;

   procedure Quit_Callback (Button : access Gtk_Button_Record'Class) is
   begin
      -- Code for the exit button functionality, may have additional functions
      --in the future 04/02/24 - GV6507

      --this is deprecated
      --  endTime := Clock;
      --  Put_Line(Image(endTime));

      Gtk.Main.Main_Quit;
   end Quit_Callback;

   procedure Draw_Callback (Button : access Gtk_Button_Record'Class) is
   begin
      --this will need to be reworked
      --this is the call for the draw pile, it continues down the list of the
      --drawable cards, and sets the lable for the top card equal to it
      --this will hopefully be replaced by images in the future
      --04/02/24 - GV6507
      if(drawPileLocation = (drawPile'Length - 1)) then
         --insert call reset stock function
         drawPileLocation := -1;
         Stock.Set_Text("[*]");
      end if;
      drawPileLocation := drawPileLocation + 1;

      if drawPileLocation = (drawPile'Length - 1) then
         Stock.Set_Text("");
      end if;

      DiscardPile.Set_Text(drawPile(drawPileLocation).getCardSelf);
      Put_Line(drawPile(drawPileLocation).getCardSelf);     

   end Draw_Callback;

end buttons;
