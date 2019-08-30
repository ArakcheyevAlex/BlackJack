class BlackJack

  START_MONEY_VALUE = 100

  def initialize()
    @ui = UserInterface.new
    player_name = ui.player_name
    @player = Player.new(player_name, START_MONEY_VALUE)
    @dealer = Player.new('Dealer', START_MONEY_VALUE)
    @deck = Deck.new()
    @deck.shuffle!
    @bets = 0
  end

  def play

  end

  private

  attr_reader :ui, :player,
  attr_accessor :dealer, :deck, :bets

end
