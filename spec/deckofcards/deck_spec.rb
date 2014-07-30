# deck_spec.rb
require 'spec_helper'

module DeckOfCards

  describe Deck do

    it "should have 52 cards" do
      cards = DeckOfCards::Deck.new
      cards.makeDeck
      expect(cards.deck.length).to eq 52
    end
    it "should shuffle the cards"
    it "should deal a card" do
      cards = DeckOfCards::Deck.new
      cards.makeDeck
      cards.dealCard
      expect(cards.deck.length).to eq 51
    end
  end

end

describe HandEvaluator do

  before(:each) do
    @evaluator = HandEvaluator.new
  end

  it "should evaluate the hand as a flush" do
    hand = Array.new
    for i in 2..6
      hand.push(DeckOfCards::Card.new("D",i))
    end
    expect(@evaluator.flush?(hand)).to eq true
  end

  it "should not evaluate the hand as a flush" do
    hand = Array.new
    for i in 2..5
      hand.push(DeckOfCards::Card.new("D",i))
    end
    hand.push(DeckOfCards::Card.new("H",7))
    expect(@evaluator.flush?(hand)).to eq false
  end

  it "should evaluate the hand as a straight" do
    hand = Array.new
    for i in 2..6
      hand.push(DeckOfCards::Card.new("D",i))
    end
    expect(@evaluator.straight?(hand)).to eq true
  end

  it "should not evaluate the hand as a straight" do
    hand = Array.new
    for i in 2..5
      hand.push(DeckOfCards::Card.new("D",i))
    end
    hand.push(DeckOfCards::Card.new("H",7))
    expect(@evaluator.straight?(hand)).to eq false
  end

end

