# frozen_string_literal: true

class UserInterface
  def player_name
    puts 'Enter your name:'
    gets.chomp.to_s
  end

  def main_menu
    puts '1. Hit',
         '2. Stand',
         '3. Open cards'
    puts 'Enter your choice:'
    choice = gets.chomp.to_i
    case choice
    when 1 then return :hit
    when 2 then return :stand
    when 3 then return :open
    end
    nil
  end

  def play_again
    puts "Play again? 'y' or 'n'"
    choice = gets.chomp.to_s
    return true if choice == 'y'
    return false if choice == 'n'

    false
  end

  def clear_screen
    system 'clear'
  end

  def win(name)
    puts "#{name} wins!!!"
  end

  def push
    puts 'Push'
  end

  def no_money
    puts 'Game finished. You have no money.'
  end
end
