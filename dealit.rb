require_relative 'lib/deckofcards'

thedeck = DeckOfCards::Deck.new
thedeck.makeDeck



#until thedeck.deck.length == 0 do
#  thedeck.printCard(thedeck.dealCard)
#end
#puts thedeck.deck.length
#thedeck.printAllCards

cards = Array.new

for i in 2..5
  cards.push(DeckOfCards::Card.new("D",i))
end
#cards.push(DeckOfCards::Card.new("H",8))

evaluate = HandEvaluator.new
if evaluate.flush?(cards)
  puts "FLUSH"
else
  puts "NOT FLUSH"
end

if evaluate.straight?(cards)
  puts "STRAIGHT"
else
  puts "NOT STRAIGHT"
end



