package body cardStack is
   
   function "=" (left : in cards.suit; right : in cards.suit) return Boolean is
   begin
      if left.suitName = right.suitName and left.cardValue = right.cardValue 
      then
      return True;
      end if;
      return False;
   end;

end cardStack;
