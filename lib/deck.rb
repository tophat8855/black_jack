module BlackJack
  class Deck
    def initialize
      suits = [:diamond, :heart, :club, :spade]
      values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
      @deck = []

      suits.each do |suit|
        values.each do |value|
          @deck << Card.new(suit, value)
        end
      end
    end

    def size
      @deck.length
    end

    def cards
      @deck
    end

    def shuffle
      @deck.shuffle
    end

    def deal
      @deck.pop
    end

  end
end
