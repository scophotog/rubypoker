require_relative 'lib/deckofcards'

thedeck = DeckOfCards::Deck.new
thedeck.makeDeck

until thedeck.deck.length == 0 do
  thedeck.printCard(thedeck.dealCard)
end
puts thedeck.deck.length
#thedeck.printAllCards

