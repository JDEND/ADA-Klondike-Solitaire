with Gtk.Main;
package body buttons is

   --starts a new game clock, resets and shuffles the game deck, and sets the
   --initial draw location back to zero 04/02/24 - GV6507
   procedure New_Game_Callback (Button : access Gtk_Button_Record'Class) is
      temp : cards.suit;
   begin
      startTime := Clock;
      --  Put_Line(Image(startTime));

      DiscardPile.Set_Text("");
      Stock.Set_Text("[*]");

      shuffleDeck;
      drawPileLocation := -1;
      makeButtonsStart;
      dealCards;

      setLabelColors;

      pos_x := 0; pos_y := 0;
      tableau(pos_y, pos_x).Override_Background_Color(Gtk_State_Flag_Normal, 
                                                      (1.0, 1.0, 1.0, 1.0)
                                                     );
      while Integer(cardSelected.Current_Use) < 0 loop
         cardSelected.Dequeue(temp);
      end loop;
      
   end New_Game_Callback;

   --sets button visibility on game start 04/05/24 - GV6507
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

   --Resets the stock pile by flipping all of the cards in the discard, and
   --returning them, in order, into the draw pile 04/03/24 - GV6507
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
      tempQueue : card_containers.Queue;
      tempCard : cards.suit;
      temp_y : Integer;
      temp_x : Integer;
   begin
      
      if Btn_SelectDrop.Get_Label = "Select" then
         if pos_x /= -1 then
            if(table(pos_y,pos_x).isFlipped) = True then

               Btn_SelectDrop.Set_Label("Drop");
               temp_y := pos_y;

               while temp_y  < 18 and 
                 table(temp_y , pos_x).getCardSelf /= "[*]" loop
                  cardSelected.Enqueue(table(temp_y, pos_x));
                  Put_Line(table(temp_y , pos_x).getCardSelf);
                  temp_y  := temp_y  + 1;
               end loop;
               selection_y := pos_y; selection_x := pos_x;
            end if;
         elsif pos_x = -1 and pos_y = -1 then
            if Integer(cardSelected.Current_Use) = 0 then
               cardDiscard.Dequeue(tempCard);
               cardSelected.Enqueue(tempCard);
               Btn_SelectDrop.Set_Label("Drop");
               selection_y := pos_y; selection_x := pos_x;
            end if;
         end if;
      elsif Btn_SelectDrop.Get_Label = "Drop" then
         if pos_y = -1 then
            if Integer(cardSelected.Current_Use) = 1 then
               case pos_x is
                  when 0 =>
                     cardSelected.Dequeue(tempCard);
                     if tempCard.suitName = 'D' then
                        if diamondsFoundation.Is_Empty = True and
                          tempCard.getCardSelf = "DA"
                        then
                           diamondsFoundation.Append(tempCard);
                           diamonds.Set_Text(tempCard.getCardSelf);
                           delCard;
                        elsif tempCard.cardValue - 
                          diamondsFoundation(0).cardValue = 1 
                        then
                           diamondsFoundation.Append(tempCard);
                           diamonds.Set_Text(tempCard.getCardSelf);
                           delCard;
                        else
                           cardSelected.Enqueue(tempCard);
                        end if;
                     end if;
                  when 1 =>
                     cardSelected.Dequeue(tempCard);
                     if tempCard.suitName = 'H' then
                        if heartsFoundation.Is_Empty and
                          tempCard.getCardSelf = "HA"
                        then
                           heartsFoundation.Append(tempCard);
                           hearts.Set_Text(tempCard.getCardSelf);
                           delCard;
                        elsif tempCard.cardValue - 
                          heartsFoundation(0).cardValue = 1
                        then
                           heartsFoundation.Append(tempCard);
                           hearts.Set_Text(tempCard.getCardSelf);
                           delCard;
                        else
                           cardSelected.Enqueue(tempCard);
                        end if;
                     end if;
                  when 2 =>
                     cardSelected.Dequeue(tempCard);
                     if tempCard.suitName = 'S' then
                        if spadesFoundation.Is_Empty and
                          tempCard.getCardSelf = "SA"
                        then
                           spadesFoundation.Append(tempCard);
                           spades.Set_Text(tempCard.getCardSelf);
                           delCard;
                        elsif tempCard.cardValue - 
                          spadesFoundation(0).cardValue = 1
                        then
                           spadesFoundation.Append(tempCard);
                           spades.Set_Text(tempCard.getCardSelf);
                           delCard;
                        else
                           cardSelected.Enqueue(tempCard);
                        end if;
                     end if;
                  when 3 =>
                     cardSelected.Dequeue(tempCard);
                     if tempCard.suitName = 'C' then
                        if clubsFoundation.Is_Empty and
                          tempCard.getCardSelf = "CA"
                        then
                           clubsFoundation.Append(tempCard);
                           clubs.Set_Text(tempCard.getCardSelf);
                           delCard;
                        elsif tempCard.cardValue - 
                          clubsFoundation(0).cardValue = 1
                        then
                           clubsFoundation.Append(tempCard);
                           clubs.Set_Text(tempCard.getCardSelf);
                           delCard;
                        else
                           cardSelected.Enqueue(tempCard);
                        end if;
                     end if;
                  when others =>
                     Put_Line("Hello");
               end case;
            end if;
         elsif selection_x = -1 and selection_y = -1 then
            cardSelected.Dequeue(tempCard);
            tempCard.flipped := True;
            if pos_y /= 0 then
               if tempCard.isValidPlace(table(pos_y - 1,pos_x)) then
                  table(pos_y, pos_x) := tempCard;
                  table(pos_y, pos_x).flipped := True;
                  tableau(pos_y, pos_x).Set_Text(table(pos_y,
                                                 pos_x).getCardSelf);
                  delCard;
               else
                  cardSelected.Enqueue(tempCard);
               end if;
            else
               if tempCard.getCardValue = 12 then
                  table(pos_y, pos_x) := tempCard;
                  table(pos_y, pos_x).flipped := True;
                  tableau(pos_y, pos_x).Set_Text(table(pos_y,
                                                 pos_x).getCardSelf);
               else
                  cardSelected.Enqueue(tempCard);
               end if;
            end if;
         elsif table(selection_y, 
                     selection_x).isValidPlace(table(pos_y - 1,
                                               pos_x)) = True then

            temp_y := pos_y;
            while Integer(cardSelected.Current_Use) > 0 loop
               cardSelected.Dequeue(tempCard);
               table(temp_y, pos_x) := tempCard;
               table(temp_y, pos_x).flipped := True;
               tableau(temp_y, pos_x).Set_Text(table(temp_y,
                                               pos_x).getCardSelf);
               temp_y := temp_y + 1;
            end loop;
            delCard;
         end if;
      end if;
   end;

   procedure delCard is
      tempCard : cards.suit;
      i : Integer;
      J : Integer;
   begin
      if selection_y > 0 then
         if table(selection_y - 1, selection_x).isFlipped = False then
            table(selection_y - 1, selection_x).invertCard;
            tableau(selection_y - 1, 
                    selection_x).Set_Text(table(selection_y - 1, 
                                          selection_x).getCardSelf);
         end if;
      
            
         while table(selection_y, selection_x).getCardSelf /= "[*]" loop
            tableau(selection_y, selection_x).Set_Text("");
            table(selection_y, selection_x).setSuitType('x','x',-1);
            selection_y := selection_y + 1;
         end loop;
      elsif selection_y = -1 and selection_x = -1 then
         cardDiscard.Dequeue(tempCard);
         cardDiscard.Dequeue(tempCard);
         DiscardPile.Set_Label(tempCard.getCardSelf);
         cardDiscard.Enqueue(tempCard);
         
         i := (Integer(cardDiscard.Current_Use) - 1);
         j := 0;
         while j < i loop
            cardDiscard.Dequeue(tempCard);
            cardDiscard.Enqueue(tempCard);
            j := j+1;
         end loop;
      elsif selection_y = 0 and selection_x = 0 then
         tableau(selection_y, selection_x).Set_Text("");
         table(selection_y, selection_x).setSuitType('x','x',-1);
      end if;
         
      Btn_SelectDrop.Set_Label("Select");
   end;
   
   --directional movement button functions, moves "cursor" around the game
   --area 04/05/24 -GV6507
   procedure up_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      if pos_y > -1 then
         pos_y := pos_y - 1;
         tableau(pos_y + 1, 
                 pos_x).Override_Background_Color(
                                                  Gtk_State_Flag_Normal, 
                                                  (0.0, 0.0, 0.0, 0.0)
                                                 );
         if pos_y = -1 then
            pos_x := 0;
            diamonds.Override_Background_Color(Gtk_State_Flag_Normal, 
                                               (1.0, 1.0, 1.0, 1.0)
                                              );
         end if;
      end if;

      if pos_y >= 0 and pos_x >= 0 then
         tableau(pos_y, 
                 pos_x).Override_Background_Color(Gtk_State_Flag_Normal, 
                                                  (1.0, 1.0, 1.0, 1.0)
                                                 );
         tableau(pos_y + 1, 
                 pos_x).Override_Background_Color(
                                                  Gtk_State_Flag_Normal, 
                                                  (0.0, 0.0, 0.0, 0.0)
                                                 );
      end if;
      
      Put_Line("Pos_x: " & Integer'Image(pos_x));
      Put_Line("Pos_y: " & Integer'Image(pos_y));
      Put_Line("");
   end;
   procedure down_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      if pos_y = -1 then
         diamonds.Override_Background_Color(
                                            Gtk_State_Flag_Normal, 
                                            (0.25, 0.75, 0.38, 0.0)
                                           );
         hearts.Override_Background_Color(
                                          Gtk_State_Flag_Normal, 
                                          (0.25, 0.75, 0.38, 0.0)
                                         );
         clubs.Override_Background_Color(
                                         Gtk_State_Flag_Normal, 
                                         (0.25, 0.75, 0.38, 0.0)
                                        );
         spades.Override_Background_Color(
                                          Gtk_State_Flag_Normal, 
                                          (0.25, 0.75, 0.38, 0.0)
                                         );
         pos_x := 0;
      end if;

      if pos_y < 18 then
         pos_y := pos_y + 1;
      end if;
      

      if pos_y >= 0 and pos_x >= 0 then
         tableau(pos_y, pos_x).Override_Background_Color(Gtk_State_Flag_Normal, 
                                                         (1.0, 1.0, 1.0, 1.0)
                                                        );
         if pos_y > 0 then
            tableau(pos_y - 1, 
                    pos_x).Override_Background_Color(
                                                     Gtk_State_Flag_Normal, 
                                                     (0.25, 0.75, 0.38, 0.0)
                                                    );
         end if;
      end if;

      Put_Line("Pos_x: " & Integer'Image(pos_x));
      Put_Line("Pos_y: " & Integer'Image(pos_y));
      Put_Line("");
   end;
   procedure left_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      if pos_x > 0 then
         pos_x := pos_x - 1;
      end if;
      if pos_x > -1 and pos_y = -1
      then
         pos_x := pos_x - 1;
      end if;

      if pos_y = -1 then
         case pos_x is
            when 3 =>
               clubs.Override_Background_Color(Gtk_State_Flag_Normal, 
                                               (1.0, 1.0, 1.0, 1.0)
                                              );
            when 2 =>
               clubs.Override_Background_Color(Gtk_State_Flag_Normal, 
                                               (0.25, 0.75, 0.38, 0.0)
                                              );
               spades.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (1.0, 1.0, 1.0, 1.0)
                                               );
            when 1 =>
               spades.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (0.25, 0.75, 0.38, 0.0)
                                               );
               hearts.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (1.0, 1.0, 1.0, 1.0)
                                               );
            when 0 =>
               hearts.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (0.25, 0.75, 0.38, 0.0)
                                               );
               diamonds.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                  (1.0, 1.0, 1.0, 1.0)
                                                 );
            when -1 =>
               diamonds.Override_Background_Color(Gtk_State_Flag_Normal,
                                                  (0.25, 0.75, 0.38, 0.0)
                                                 );
               DiscardPile.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                     (1.0, 1.0, 1.0, 1.0)
                                                    );
            when others =>
               Put_Line("Broke");
         end case;
      end if;

      if pos_y >= 0 and pos_x >= 0 then
         tableau(pos_y, 
                 pos_x).Override_Background_Color(Gtk_State_Flag_Normal, 
                                                  (1.0, 1.0, 1.0, 1.0)
                                                 );
         tableau(pos_y, 
                 pos_x + 1).Override_Background_Color(
                                                      Gtk_State_Flag_Normal, 
                                                      (0.0, 0.0, 0.0, 0.0)
                                                     );
      end if;
      
      Put_Line("Pos_x: " & Integer'Image(pos_x));
      Put_Line("Pos_y: " & Integer'Image(pos_y));
      Put_Line("");
   end;
   procedure right_Callback (Button : access Gtk_Button_Record'Class)is
   begin
      if pos_x < 3 and pos_y = -1 then
         pos_x := pos_x + 1;
      elsif pos_x < 6 and pos_y >= 0 then
         pos_x := pos_x + 1;
      end if;

      if pos_y = -1 then
         case pos_x is
            when 0 =>
               diamonds.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                  (1.0, 1.0, 1.0, 1.0)
                                                 );
               DiscardPile.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                     (0.0, 0.0, 0.0, 0.0)
                                                    );
            when 1 =>
               diamonds.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                  (0.0, 0.0, 0.0, 0.0)
                                                 );
               hearts.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (1.0, 1.0, 1.0, 1.0)
                                               );
            when 2 =>
               hearts.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (0.0, 0.0, 0.0, 0.0)
                                               );
               spades.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (1.0, 1.0, 1.0, 1.0)
                                               );
            when 3 =>
               spades.Override_Background_Color(Gtk_State_Flag_Normal, 
                                                (0.0, 0.0, 0.0, 0.0)
                                               );
               clubs.Override_Background_Color(Gtk_State_Flag_Normal, 
                                               (1.0, 1.0, 1.0, 1.0)
                                              );
            when others =>
               Put_Line("Broke");
         end case;
      end if;


      if pos_y >= 0 and pos_x >= 0 then
         tableau(pos_y, 
                 pos_x).Override_Background_Color(Gtk_State_Flag_Normal, 
                                                  (1.0, 1.0, 1.0, 1.0)
                                                 );
         tableau(pos_y, 
                 pos_x - 1).Override_Background_Color(
                                                      Gtk_State_Flag_Normal, 
                                                      (0.0, 0.0, 0.0, 0.0)
                                                     );
      end if;

      Put_Line("Pos_x: " & Integer'Image(pos_x));
      Put_Line("Pos_y: " & Integer'Image(pos_y));
      Put_Line("");
   end;
   
end buttons;
