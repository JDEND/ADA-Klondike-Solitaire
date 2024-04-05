package body Deck is
   --declare empty card objects
   --note 04/04/24: this is horrificly ugly and inefficient, but its not getting
   --changed right now - GV6507
   aceSpades : cards.suit; twoSpades : cards.suit; threeSpades : cards.suit;
   fourSpades : cards.suit;fiveSpades : cards.suit; sixSpades : cards.suit;
   sevenSpades : cards.suit; eightSpades : cards.suit; nineSpades : cards.suit;
   tenSpades : cards.suit; jackSpades : cards.suit; queenSpades : cards.suit;
   kingSpades : cards.suit;

   aceClubs : cards.suit; twoClubs : cards.suit; threeClubs : cards.suit;
   fourClubs : cards.suit; fiveClubs : cards.suit; sixClubs : cards.suit;
   sevenClubs : cards.suit; eightClubs : cards.suit; nineClubs : cards.suit;
   tenClubs : cards.suit; jackClubs : cards.suit; queenClubs : cards.suit;
   kingClubs : cards.suit;

   aceHearts : cards.suit; twoHearts : cards.suit; threeHearts : cards.suit;
   fourHearts : cards.suit; fiveHearts : cards.suit; sixHearts : cards.suit;
   sevenHearts : cards.suit; eightHearts : cards.suit; nineHearts : cards.suit;
   tenHearts : cards.suit; jackHearts : cards.suit; queenHearts : cards.suit;
   kingHearts : cards.suit;

   aceDiamonds : cards.suit;twoDiamonds : cards.suit;threeDiamonds : cards.suit;
   fourDiamonds : cards.suit;fiveDiamonds : cards.suit;sixDiamonds : cards.suit;
   sevenDiamonds : cards.suit;eightDiamonds : cards.suit;
   nineDiamonds : cards.suit;tenDiamonds : cards.suit;jackDiamonds : cards.suit;
   queenDiamonds : cards.suit;kingDiamonds : cards.suit;
   
   --populates the deck array with the cards, and initializes each objects with
   --its values
   procedure initializeDeck is
   begin
      stdCardDeck := (aceSpades, twoSpades, threeSpades, fourSpades, fiveSpades,
                      sixSpades, sevenSpades, eightSpades, nineSpades,
                      tenSpades, jackSpades, queenSpades, kingSpades, aceClubs,
                      twoClubs, threeClubs, fourClubs, fiveClubs,
                      sixClubs, sevenClubs, eightClubs, nineClubs, tenClubs,
                      jackClubs, queenClubs, kingClubs, aceHearts, twoHearts,
                      threeHearts, fourHearts, fiveHearts, sixHearts,
                      sevenHearts, eightHearts, nineHearts, tenHearts,
                      jackHearts, queenHearts, kingHearts, aceDiamonds,
                      twoDiamonds, threeDiamonds, fourDiamonds, fiveDiamonds,
                      sixDiamonds, sevenDiamonds, eightDiamonds, nineDiamonds,
                      tenDiamonds, jackDiamonds, queenDiamonds, kingDiamonds);
      
      for i in 0..12 loop
         stdCardDeck(i).setSuitType('S', 'B', (i));
      end loop;
            for i in 13..25 loop
         stdCardDeck(i).setSuitType('C', 'B', (i mod 13));
      end loop;
      for i in 26..38 loop
         stdCardDeck(i).setSuitType('H', 'R', (i mod 13));
      end loop;
            for i in 39..51 loop
         stdCardDeck(i).setSuitType('D', 'R', (i mod 13));
      end loop;
   end;

end Deck;
