package cards is

   --declaration of card type(this is similar to a c-style struct, and the basis
   --for object oriented programming in ada)
   type card is tagged record
      cardValue : integer;
   end record;

   procedure printCardValueNumeric(Self : in out card);
   procedure setCardValue(Self : in out card; newVal : Integer);
   function getCardValue(Self : in out card) return Integer;
   function getCardRepresentation (Self : in out card) return String;

   --declaration of suit type, inherits value from parent card type
   type suit is new card with record
      suitName : Character;
      suitColor : Character;
      flipped : Boolean := False;
   end record;

   function isValidPlace(Self : in out suit; Other : in out suit)
                         return Boolean;
   procedure setSuitType(Self : in out suit; suitName : Character;
                         suitColor : Character; newVal : Integer);
	procedure invertCard(Self : in out suit);
   function isFlipped(Self : in out suit) return Boolean;
   --  procedure printCard(Self : in out suit);
   function getCardSelf (Self : in out suit) return String;



end cards;
