# deck_spec.rb
require 'spec_helper'

module DeckOfCards

  describe Deck do

    it "should have 52 cards" do
      cards = DeckOfCards::Deck.new
      expect(cards.deck.length).to eq 52
    end
    it "should shuffle the cards"
    it "should deal a card" do
      cards = DeckOfCards::Deck.new
      cards.dealCard
      expect(cards.deck.length).to eq 51
    end
  end

end
