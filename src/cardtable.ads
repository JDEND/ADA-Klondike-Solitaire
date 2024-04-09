with ada.Containers.Synchronized_Queue_Interfaces;
with ada.Containers.Unbounded_Synchronized_Queues;
with ada.Containers.Vectors;
with Ada.Numerics.Discrete_Random;
with Ada.Text_IO;

with cardStack;

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
   type tableauRows is array(0..18, 0..6) of cards.suit;
   table : tableauRows;

   type cardSpots is array(0..18, 0..6) of Gtk_Label;
   tableau : cardSpots;


   --foundations declaration
   acesFoundation : cardStack.Stack.Vector;
   heartsFoundation : cardStack.Stack.Vector;
   spadesFoundation : cardStack.Stack.Vector;
   clubsFoundation : cardStack.Stack.Vector;

   --card table functions
   procedure initDrawPile;
   procedure shuffleDeck;
   procedure swapCard(index : Integer; swapLocation : Integer);
   procedure initializeTable;
   procedure dealCards;

end CardTable;
