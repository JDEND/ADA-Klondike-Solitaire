with ada.Containers.Synchronized_Queue_Interfaces;
with ada.Containers.Unbounded_Synchronized_Queues;
with ada.Containers.Vectors;
with Ada.Numerics.Discrete_Random;
with Ada.Text_IO;

with cards;

with cardStack; use cardStack;

with deck;

with Gtk.Enums; use Gtk.Enums;
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
   cardDiscard : Stack.Vector;
   cardSelected : card_containers.Queue;


   DiscardPile : Gtk_Label;
   Stock : Gtk_Label;

   --tableau declarations
   type tableauRows is array(0..18, 0..6) of cards.suit;
   table : tableauRows;

   type cardSpots is array(0..18, 0..6) of Gtk_Label;
   tableau : cardSpots;


   --foundations declaration
   diamondsFoundation : Stack.Vector;
   heartsFoundation : Stack.Vector;
   spadesFoundation : Stack.Vector;
   clubsFoundation : Stack.Vector;

   --card table functions
   procedure initDrawPile;
   procedure shuffleDeck;
   procedure swapCard(index : Integer; swapLocation : Integer);
   procedure initializeTable;
   procedure dealCards;
   procedure setLabelColors;

   --Pile Placeholders
   diamonds : Gtk_Label;
   hearts : Gtk_Label;
   spades : Gtk_Label;
   clubs : Gtk_Label;


end CardTable;
