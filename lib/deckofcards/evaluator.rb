class HandEvaluator

  def flush?(cards)
    cards.each do |card|
      i = 0
      while i < cards.length do
        if card.suit != cards[0].suit
          return false
        end
        i+=1
      end
    end
    return true
  end

  def ranking(cards)

    ranking = Array.new
    cards.each do |card|
      ranking.push(card.num)
    end
    ranking.sort
  end

  def straight?(cards)
    sorted = ranking(cards)
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

end
