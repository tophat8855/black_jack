module BlackJack
  class Card
    def initialize(suit, face)
      @suit = suit
      @face = face
    end

    def suit
      @suit
    end

    def face
      @face
    end

    def values
      array = []
      if @face == 'A'
        array << 1
        array << 11
      elsif
        @face == 'J' || @face == 'Q' || @face == 'K'
        array << 10
      else
        array << @face.to_i
      end
    end

    def == other_card
      @suit == other_card.suit && @face == other_card.face
    end

  end
end
