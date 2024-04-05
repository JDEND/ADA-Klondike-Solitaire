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

   --resets the stock after a player has drawn all of the cards,
   --sets flipped back to false, and prepares for next draw 04/03/24 - GV6507
   procedure resetStock is
   begin
      ada.Text_IO.Put_Line("there");
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
   end;
   
   
end CardTable;
