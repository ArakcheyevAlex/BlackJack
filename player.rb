# frozen_string_literal: true

class Player
  attr_reader :name
  attr_accessor :money

  FULL_HAND_CARDS_LIMIT = 3

  def initialize(name, money, hidden = true)
    puts hidden
    @name = name
    @money = money
    @cards = []
    @hidden = hidden
    @scores = 0
  end

  def scores
    return '***' if hidden?
    @scores
  end

  def drop_cards
    self.cards = []
    @scores = 0
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

  def hidden?
    @hidden
  end

  def cards_to_s
    return 'N/A' if cards.empty?
    return '**' if hidden
    cards_str = ''
    cards.each { |card| cards_str += " #{card.to_s}" }
  end

  private

  attr_accessor :cards
end
