with cards;
package Deck is

   type cardDeck is array(0..51) of cards.suit;
   --create array
   stdCardDeck : cardDeck;
   procedure initializeDeck;

end Deck;
