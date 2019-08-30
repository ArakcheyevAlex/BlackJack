# frozen_string_literal: true

class Deck
  def initialize
    @cards = []
    Card::SUITS.product(Card::RANKS.keys).map do |(suit, rank)|
      @cards << Card.new(suit, rank)
    end
  end

  def shuffle!
    cards.shuffle!
  end

  def draw_card()
    cards.pop
  end

  private

  attr_reader :cards
end
