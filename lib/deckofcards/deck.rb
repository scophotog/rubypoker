module DeckOfCards

  class Card

    attr :c_num, true
    attr :c_suit, true

  end

  class Deck

    SUITS = ["D","H","C","S"]

    def initialize
      @d = Array.new
        SUITS.each do |suit|
          num = 2
          while num <= 14 do
            c_tmp = Card.new
            c_tmp.c_num=(num)
            c_tmp.c_suit=(suit)
            @d.push(c_tmp)
            num += 1
          end
        end
    end

    def deck
      @d
    end

    def printAllCards
      deck.each do |card|
        puts "Card #{card.c_suit} - #{card.c_num}"
      end
    end

    def dealCard
      deck.pop
    end

  end

end
