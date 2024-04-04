with ada.Text_IO;

package body cards is
--card class method definitions

   --determines what representation should be printed to console based upon the 
   --card value, this is exclusively for debugging logic and will be deprecated
   --upon creation of the GUI 03/19/24 - GV6507
   procedure printCardValueNumeric(Self : in out card) is
      Val : integer;
   begin
      Val := Self.cardValue;
      case val is
         when 0 =>
            ada.Text_IO.Put_Line("A");
         when 1 =>
            ada.Text_IO.Put_Line("2");
         when 2 =>
            ada.Text_IO.Put_Line("3");
         when 3 =>
            ada.Text_IO.Put_Line("4");
         when 4 =>
            ada.Text_IO.Put_Line("5");
         when 5 =>
            ada.Text_IO.Put_Line("6");
         when 6 =>
            ada.Text_IO.Put_Line("7");
         when 7 =>
            ada.Text_IO.Put_Line("8");
         when 8 =>
            ada.Text_IO.Put_Line("9");
         when 9 =>
            ada.Text_IO.Put_Line("10");
         when 10 =>
            ada.Text_IO.Put_Line("J");
         when 11 =>
            ada.Text_IO.Put_Line("Q");
         when 12 =>
            ada.Text_IO.Put_Line("K");
         when others =>
            ada.Text_IO.Put_Line("Empty");
      end case;
      
   end;
   
   --returns value of card, is not often used 03/21/24 - GV6507
   function getCardValue(Self : in out card) return integer is
   begin
      return Self.cardValue;
   end getCardValue;
   
   --sets new value, this is not strictly necessary as each object could be
   --populated with values on init, but I prefered to use a procedure
   --to beter familiarize myself with ada's quirks 03/14/24 - GV6507
   procedure setCardValue(Self : in out card; newVal : Integer) is
   begin
		Self.cardValue := newVal;
   end;

   --currently only used for terminal, may be modified for use with GUI at
   --a later point 03/21/24 - GV6507
   function getCardRepresentation (Self : in out card) return String is
      Val : integer;
   begin
      Val := Self.cardValue;
      case val is
         when 0 =>
            return "A";
         when 1 =>
            return "2";
         when 2 =>
            return "3";
         when 3 =>
            return "4";
         when 4 =>
            return "5";
         when 5 =>
            return "6";
         when 6 =>
            return "7";
         when 7 =>
            return "8";
         when 8 =>
            return "9";
         when 9 =>
            return "10";
         when 10 =>
            return "J";
         when 11 =>
            return "Q";
         when 12 =>
            return "K";
         when others =>
            return "";
      end case;
   end;

--suit class method definitions

   --Checks if card is valid to be placed on the individual sequence
   --this is seperate from checking if it is valid to be placed on a
   --foundation 03/18/24 - GV6507
   function isValidPlace(Self : in out suit; Other : in out suit) return Boolean
   is
   begin
      if Self.isFlipped = True and Other.isFlipped = True then
         if Self.suitColor /= Other.suitColor then
            if Self.cardValue - Other.cardValue = -1 then
               return True;
            end if;
         end if;
      end if;

      return False;
	end;

   --Sets suit type and color, also redundant, see set card value comments
   -- 03/18/24 - GV6507
   procedure setSuitType(Self : in out suit; suitName : Character;
                         suitColor : Character; newVal : Integer) is
   begin
      Self.suitColor := suitColor;
      self.suitName := suitName;
      Self.setCardValue(newVal);
   end;

   --Check for card visibility in deck or sequence, for rendering
   --purposes 03/19/24 - GV6507
   function isFlipped(Self : in out suit) return Boolean is
   begin
      if Self.flipped = True then
         return True;
      else
         return False;
      end if;
   end;

   --Inverts card if not currently visible, reverse functionality is not needed
   --as the only time the card visibility would ever be reset is in the
   --case of a game reset, in which case the cards themselves are reset to
   --their default non-visible state 03/21/24 - GV6507
  procedure invertCard(Self : in out suit) is
  begin
      if Self.flipped = False then
         self.flipped := True;
      end if;
   end;

   --Prints card to terminal, shows the suit and the card "number", if the card
   --is not currently visible it instead prints ¤ 03/18/24 - GV6507
   --This is set to be deprecated upon the creation of the 
   --GTKADA GUI 03/21/24 - GV6507
   procedure printCard(Self : in out suit) is
   begin
      if Self.isFlipped = False then
         Ada.Text_IO.Put_Line("¤");
      else
         Ada.Text_IO.Put_Line(Self.suitName & Self.getCardRepresentation);
      end if;
   end;

   function getCardSelf (Self : in out suit) return String is
   begin
      if Self.isFlipped = True then
         return(Self.suitName & Self.getCardRepresentation);
      else
         return("[*]");
      end if;
   end getCardSelf;


end cards;
