class ScoredCard

  VALUES_SORT_ORDER = {"2" => 0, "3" => 1, "4" => 2, "5" => 3, "6" => 4,
                      "7" => 5, "8" => 6, "9" => 7, "10" => 8, "Jack" => 9,
                      "Queen" => 10, "King" => 11, "Ace" => 12}
  SUITS_SORT_ORDER = {"Clubs" => 0, "Diamonds" => 1,
                      "Hearts" => 2, "Spades" => 3}

  def score_cards(cards)
    scored_cards = {}
    cards.each do |card|
      value_score = VALUES_SORT_ORDER[card.value]
      suit_score = SUITS_SORT_ORDER[card.suit]
      scored_card["#{value_score}.#{suit_score}".to_f] = card
    end
  end

  def get_scores(cards)
    scored_cards = score_cards(cards)
    score_cards.map do |score, card|
      score
    end
  end

  def get_cards(scores)

  end


end
