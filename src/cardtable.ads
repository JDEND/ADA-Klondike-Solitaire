with cards;
with deck;
with Ada.Numerics.Discrete_Random;
with Gtk.Label; use Gtk.Label;
package CardTable is
   --second array of cardDeck type
   drawPile : deck.cardDeck;
   --draw pile location
   drawPileLocation : Integer;

   DiscardPile : Gtk_Label;
   Stock : Gtk_Label;

   --tableau declarations
   type tableauRows is array(0..18) of cards.suit;
   rowOne : tableauRows;
   rowTwo : tableauRows;
   rowThree : tableauRows;
   rowFour : tableauRows;
   rowFive : tableauRows;
   rowSix : tableauRows;
   rowSeven : tableauRows;

   --foundations declarations
   type foundation is array(0..12) of cards.suit;
   acesFoundation : foundation;
   heartsFoundation : foundation;
   spadesFoundation : foundation;
   clubsFoundation : foundation;

   --card table functions
   procedure initDrawPile;
   procedure shuffleDeck;
   procedure swapCard(index : Integer; swapLocation : Integer);
   procedure resetStock;
   procedure dealCards;

end CardTable;
