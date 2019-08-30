# frozen_string_literal: true

require './user_interface'
require './card'
require './player'
require './blackjack'
require './deck'

game = BlackJack.new
game.play
