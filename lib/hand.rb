module BlackJack
  class Hand
    def initialize
      @hand = []
      @values = []
    end

    def empty?
      @hand.empty?
    end

    def values
      sum = 0
      value_array = []
      int = 0

      @hand.each do |card|
        value_array << card.values do |val|
          val
        end
      end

      if value_array.include?([1, 11])
        if @hand.size == 1
          @values = [1, 11]
        elsif @hand.size == 2
          if @hand[0].face == @hand[1].face
            @values = [2, 12, 22]
          else value_array.sort!
            int = value_array[1].join.to_i
            @values = [1 + int, 11 + int]
          end

        end
      else
        @hand.each do |card|
          @values = card.values.map do |val|
            sum += val
          end
        end
      end

      @values
    end

    def size
      @hand.length
    end

    def add (card)
      @hand << card
    end

  end
end
