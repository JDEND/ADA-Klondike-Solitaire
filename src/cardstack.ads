with ada.Containers.Vectors;
with cards;
package cardStack is

   function "=" (left : in cards.suit; right : in cards.suit) return Boolean;

   package Stack is new ada.Containers.Vectors(Index_Type => Natural, 
                                               Element_Type => cards.suit,
                                              "=" => cardStack."=");
end cardStack;
