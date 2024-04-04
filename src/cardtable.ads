with ada.Containers.Synchronized_Queue_Interfaces;
with ada.Containers.Unbounded_Synchronized_Queues;
with Ada.Numerics.Discrete_Random;
with Ada.Text_IO;

with cards;

with deck;

with Gtk.Label; use Gtk.Label;



package CardTable is
   --second array of cardDeck type
   drawPile : deck.cardDeck;
   --draw pile location
   drawPileLocation : Integer;

   --declarations for card queues
   package queue_interface is new
     ada.Containers.Synchronized_Queue_Interfaces(cards.suit);
   package card_containers is new
     ada.Containers.Unbounded_Synchronized_Queues(queue_interface);

   cardStock : card_containers.Queue;
   cardDiscard : card_containers.Queue;


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
