module DeckOfCards

  class Card

    attr :num, true
    attr :suit, true

    def initialize(suit,num)
      @num = num
      @suit = suit
    end

  end

  class Deck

    SUITS = ["D","H","C","S"]

    attr :deck

    def printAllCards
      deck.each do |card|
        printCard(card)
      end
    end

    def printCard(card)
      puts "Card #{card.suit} - #{card.num}"
    end

    def dealCard
      deck.delete_at Random.new.rand deck.length
    end

    def makeDeck
      @deck = Array.new
      SUITS.each do |suit|
        num = 2
        while num <= 14 do
          @deck.push(Card.new(suit,num))
          num += 1
        end
      end
    end

  end

end
