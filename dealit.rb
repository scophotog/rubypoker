require_relative 'lib/deckofcards'

thedeck = DeckOfCards::Deck.new
thedeck.makeDeck



#until thedeck.deck.length == 0 do
#  thedeck.printCard(thedeck.dealCard)
#end
#puts thedeck.deck.length
#thedeck.printAllCards

cards = Array.new

for i in 2..4
  cards.push(DeckOfCards::Card.new("D",4))
end
cards.push(DeckOfCards::Card.new("H",8))

evaluate = HandEvaluator.new(cards)
if evaluate.flush?
  puts "FLUSH"
else
  puts "NOT FLUSH"
end

if evaluate.straight?
  puts "STRAIGHT"
else
  puts "NOT STRAIGHT"
end

if evaluate.fourOfAKind?
  puts "FOUR"
else
  puts "NOT"
end



