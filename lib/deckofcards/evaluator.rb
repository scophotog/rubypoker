class HandEvaluator

  def initialize(hand)
    @hand = hand
  end

  def flush?
    @hand.each do |card|
      i = 0
      while i < @hand.length do
        if card.suit != @hand[i].suit
          return false
        end
        i+=1
      end
    end
    return true
  end

  def straight?()
    sorted = rankCards
    j = 0
    while j < sorted.length-1 do
      x = sorted[j+1] - sorted[j]
      if x!=1
        return false
      end
      j+=1
    end
    return true
  end

  def rankCards
    ranking = []
    @hand.each do |card|
      ranking.push(card.num)
    end
    ranking.sort
  end

  def fourOfAKind?
    sorted = rankCards
    count = 0
    i = 0
    sorted.each do |card|
      while i < @hand.length && count < 4 do
        if card == @hand[i].num
          count+=1
        end
        i+=1
      end
    end
    puts "Count #{count}"
    count == 4 ? true : false
  end

end
