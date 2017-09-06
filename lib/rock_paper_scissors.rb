module Turn
  options = ["rock", "paper", "scissors"]
  def player_turn
    "Your turn!"
    puts "What is your choice?"
    user_input = gets.chomp.downcase
  end
  def computer_turn
    "Computer turn!"
    computer_choice = options[rand(options.length)]
  end
end

class RPS
  include Turn
  def wins?(user_input, computer_choice)
    if (user_input == "rock" && computer_choice == "scissors")
      return true
      puts "You win!"
    elsif (user_input == "scissors" && computer-choice == "paper")
      return true
      puts "You win!"
    elsif (user_input == "paper" && computer_choice == "rock")
      return true
      puts "You win!"
    else
      return false
      puts "Computer wins!"
    end
  end
end

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
