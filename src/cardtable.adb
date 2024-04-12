package body CardTable is

   --initDrawPile creates a deep copied array from the current card deck,
   --ensures avaiability of a non-modified copy of the deck in
   --the case of needing to reset the game due to an error 03/21/24 - GV6507
   procedure initDrawPile is
   begin
      Deck.initializeDeck;
      drawPile := Deck.stdCardDeck;
   end;

   --Code body for generating random number for shuffling deck 03/21/24 - GV6507
   subtype randomRange is Integer range 0 .. 51;
   package Rand is new
     Ada.Numerics.Discrete_Random(randomRange);
   use Rand;
   G : Generator;
   X : randomRange;
   
   --Utilizing the draw pile deck, randomly shuffles cards around in the array
   --to prepare for dealing 03/21/24 - GV6507
   procedure shuffleDeck is
   begin
      for i in 0..51 loop
         Reset(G);
         X := Random(G);
         swapCard(i, X);
      end loop;
   end;
   
   --Self-explanatory 03/21/24 - GV6507
   procedure swapCard(index : Integer; swapLocation : Integer) is
      tempSwapVar : cards.suit;
   begin
      tempSwapVar := drawPile(index);
      drawPile(index) := drawPile(swapLocation);
      drawPile(swapLocation) := tempSwapVar;
   end;
   
   procedure initializeTable is
   begin
      for i in 0..18 loop
         for j in 0..6 loop
            tableau(i,j) := Gtk_Label_New;
         end loop;        
      end loop;
   end;
   

   --Deals cards when new game button is pressed 04/03/24 - GV6507
   procedure dealCards is
      j : Integer;
   begin
      j := 0;
      --adds cards to the back end array where processing will occur
      for i in 0..27 loop
         if j < 7 then
            table(0, (i mod 7)) := drawPile(i);
         elsif j < 13 then
            table(1, (i mod 6)) := drawPile(i);
         elsif j < 18 then
            table(2, (i mod 5)) := drawPile(i);
         elsif j < 22 then
            table(3, (i mod 4)) := drawPile(i);
         elsif j < 25 then
            table(4, (i mod 3)) := drawPile(i);
         elsif j < 27 then
            table(5, (i mod 2)) := drawPile(i);
         else
            table(6, (i mod 1)) := drawPile(i);
         end if;
         j := j+1;  
      end loop;

      --sets the front end lables to card representation
      j := 0;
      for i in 0..27 loop
         if j < 7 then
            tableau(0, (i mod 7)).Set_Text(drawPile(i).getCardSelf);
         elsif j < 13 then
            tableau(1, (i mod 6)).Set_Text(drawPile(i).getCardSelf);
         elsif j < 18 then
            tableau(2, (i mod 5)).Set_Text(drawPile(i).getCardSelf);
         elsif j < 22 then
            tableau(3, (i mod 4)).Set_Text(drawPile(i).getCardSelf);
         elsif j < 25 then
            tableau(4, (i mod 3)).Set_Text(drawPile(i).getCardSelf);
         elsif j < 27 then
            tableau(5, (i mod 2)).Set_Text(drawPile(i).getCardSelf);
         else
            tableau(6, (i mod 1)).Set_Text(drawPile(i).getCardSelf);
         end if; 
         j := j+1;  
      end loop;

      for i in 28..51 loop
         cardStock.Enqueue(drawPile(i));
      end loop;

      --this is terrible but I'm lazy
      table(0,6).invertCard; table(1,5).invertCard; table(2,4).invertCard;
      table(3,3).invertCard; table(4,2).invertCard; table(5,1).invertCard;
      table(6,0).invertCard;

      tableau(0,6).Set_Text(table(0,6).getCardSelf);
      tableau(1,5).Set_Text(table(1,5).getCardSelf);
      tableau(2,4).Set_Text(table(2,4).getCardSelf);
      tableau(3,3).Set_Text(table(3,3).getCardSelf);
      tableau(4,2).Set_Text(table(4,2).getCardSelf);
      tableau(5,1).Set_Text(table(5,1).getCardSelf);
      tableau(6,0).Set_Text(table(6,0).getCardSelf);
   end;

   procedure setLabelColors is
   begin
      DiscardPile.Override_Background_Color(
                                            Gtk_State_Flag_Normal, 
                                            (0.0, 0.0, 0.0, 0.0)
                                           );
      Stock.Override_Background_Color(
                                      Gtk_State_Flag_Normal, 
                                      (0.0, 0.0, 0.0, 0.0)
                                     );
          
      for i in 0..18 loop
         for j in 0..6 loop
            tableau(i,j).Override_Background_Color(
                                                   Gtk_State_Flag_Normal, 
                                                   (0.0, 0.0, 0.0, 0.0)
                                                  );
         end loop;        
      end loop;
      diamonds.Override_Background_Color(
                                         Gtk_State_Flag_Normal, 
                                         (0.0, 0.0, 0.0, 0.0)
                                        );
      hearts.Override_Background_Color(
                                       Gtk_State_Flag_Normal, 
                                       (0.0, 0.0, 0.0, 0.0)
                                      );
      spades.Override_Background_Color(
                                       Gtk_State_Flag_Normal, 
                                       (0.0, 0.0, 0.0, 0.0)
                                      );
      clubs.Override_Background_Color(
                                      Gtk_State_Flag_Normal, 
                                      (0.0, 0.0, 0.0, 0.0)
                                     );
   end;
   
   
end CardTable;
