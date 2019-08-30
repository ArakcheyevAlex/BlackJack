# frozen_string_literal: true

class Deck
  def initialize
    @cards = []
    Card::SUITS.product(Card::RANKS.keys).map do |(suit, rank)|
      Card.new(suit, rank)
    end
  end

  def shuffle!
    cards.shuffle!
  end

  def take_card(count = 1)
    cards.pop(count)
  end

  private

  attr_reader :cards
end
