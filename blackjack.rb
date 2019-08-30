# frozen_string_literal: true

class BlackJack
  START_MONEY_VALUE = 100

  attr_reader :player, :dealer, :bets, :deck

  def initialize
    @ui = UserInterface.new
    player_name = ui.player_name
    @player = Player.new(player_name, START_MONEY_VALUE, false)
    @dealer = Player.new('Dealer', START_MONEY_VALUE)
    @deck = Deck.new
    @deck.shuffle!
    @bets = 0
  end

  def play
    new_game
  end

  def new_game
    deal_cards
    make_bets

    ui.show_state(self)
  end

  private

  def deal_cards
    2.times do
      player.take_card(deck.draw_card)
      dealer.take_card(deck.draw_card)
    end
  end

  def make_bets

  end

  attr_reader :ui
end
