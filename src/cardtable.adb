with Ada.Numerics.Discrete_Random;
with Ada.Text_IO;
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
      
   end;
   
   --Deals cards when new game button is pressed 04/03/24 - GV6507
   procedure dealCards is
   begin
      
      
   end;
   
   
end CardTable;
