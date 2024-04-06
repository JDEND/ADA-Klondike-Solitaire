with Gtk.Main;
package body buttons is

   procedure New_Game_Callback (Button : access Gtk_Button_Record'Class) is
   begin

      --starts a new game clock, resets and shuffles the game deck, and sets the
      --initial draw location back to zero, will have other functions in the
      --future 04/02/24 - GV6507
      startTime := Clock;
      --  Put_Line(Image(startTime));
      shuffleDeck;
      drawPileLocation := -1;
      DiscardPile.Set_Text("");
      Stock.Set_Text("[*]");
      makeButtonsStart;

      dealCards;
      
   end New_Game_Callback;

   --sets button visibility on game start
   procedure makeButtonsStart is
   begin
      Btn_Draw.Set_Visible(True);
      Btn_Return.Set_Visible(False);
      Btn_Down.Set_Visible(True);
      Btn_Up.Set_Visible(True);
      Btn_Left.Set_Visible(True);
      Btn_Right.Set_Visible(True);
      Btn_SelectDrop.Set_Visible(True);
   end;
   

   procedure Quit_Callback (Button : access Gtk_Button_Record'Class) is
   begin
      -- Code for the exit button functionality, may have additional functions
      --in the future 04/02/24 - GV6507

      --this is deprecated
      --  endTime := Clock;
      --  Put_Line(Image(endTime));

      Gtk.Main.Main_Quit;
   end Quit_Callback;

   --this is the call for the draw pile, it continues down the list of the
   --drawable cards, and sets the lable for the top card equal to it
   --this will hopefully be replaced by images in the future
   --04/02/24 - GV6507
   --rework to make use of queues 04/04/24 -GV6507
   procedure Draw_Callback (Button : access Gtk_Button_Record'Class) is
      temp : cards.suit;
   begin
      if Integer(cardStock.Current_Use) > 0 then
         cardStock.Dequeue(temp);
         temp.flipped := True; --replace this with function in future
         DiscardPile.Set_Text(temp.getCardSelf);
         cardDiscard.Enqueue(temp);
         if Integer(cardStock.Current_Use) = 0 then
            Stock.Set_Text("");
            Btn_Draw.Set_Visible(False);
            Btn_Return.Set_Visible(True);
         end if;
      end if;
   end Draw_Callback;

   --returns all cards in the discard to the stock pile
   procedure Return_Callback (Button : access Gtk_Button_Record'Class) is
      temp : cards.suit;
   begin
      Btn_Return.Set_Visible(False);
      DiscardPile.Set_Text("");
      Stock.Set_Text("[*]");
      while Integer(cardDiscard.Current_Use) > 0 loop
         cardDiscard.Dequeue(temp);
         temp.flipped := False;
         cardStock.Enqueue(temp);
      end loop;
      Btn_Draw.Set_Visible(True);
   end;

   --Functionality for selecting card(s) to be moved 04/05/24 - GV6507
   procedure select_Callback (Button : access Gtk_Button_Record'Class) is
   begin
      if Btn_SelectDrop.Get_Label = "Select" then
         Btn_SelectDrop.Set_Label("Drop");
      else
         Btn_SelectDrop.Set_Label("Select");
      end if;    
   end;
   
   --directional movement button functions, moves "cursor" around the game
   --area 04/05/24 -GV6507
   procedure up_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      Put_Line("up");
   end;
   procedure down_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      Put_Line("down");
   end;
   procedure left_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      Put_Line("left");
   end;
   procedure right_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      Put_Line("right");
   end;
   
end buttons;
