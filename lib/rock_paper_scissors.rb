require('pry')
module Turn
  def player_turn
    "Your turn!"
    puts "What is your choice?"
    user_input = gets.chomp.downcase
  end
  def computer_turn
    options = ["rock", "paper", "scissors"]
    "Computer turn!"
    computer_choice = options[rand(options.length)]
    puts "computer choose " + computer_choice
  end
end

class RPS
  include Turn

  def wins?(user_input, computer_choice)
    if (user_input == "rock" && computer_choice == "scissors")
      puts "You win!"
      return true
    elsif (user_input == "scissors" && computer_choice == "paper")
      puts "You win!"
      return true
    elsif (user_input == "paper" && computer_choice == "rock")
      puts "You win!"
      return true
    else
      puts "Computer wins!"
      return false
    end
  end
end

game = RPS.new()
user_input = game.player_turn
computer_choice = game.computer_turn
game.wins?(user_input, computer_choice)
# public def beats?(arg)
#   if (self == "rock" && arg == "scissors")
#     return true
#   elsif (self == "scissors" && arg == "paper")
#     return true
#   elsif (self == "paper" && arg == "rock")
#     return true
#   else return false
#   end
# end
