# frozen_string_literal: true

class Player
  attr_reader :name, :scores
  attr_accessor :money

  FULL_HAND_CARDS_LIMIT = 3

  def initialize(name, money)
    @name = name
    @money = money
    @cards = []
  end

  def drop_cards
    self.cards = []
  end

  def take_card(card)
    card_value = card.price
    card_value = 1 if (@scores + card_value > 21) && card.ace?
    @scores += card_value
    cards << card
  end

  def cards_count
    cards.size
  end

  def full_hand?
    cards.size >= FULL_HAND_CARDS_LIMIT
  end

  def no_money?
    money.zero?
  end

  def show_cards
    cards.each { |card| print card.to_s }
    puts ''
  end

  private

  attr_accessor :cards
end
