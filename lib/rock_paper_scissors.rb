public def beats?(arg)
  if (self == "rock" && arg == "scissors")
    return true
  elsif (self == "scissors" && arg == "paper")
    return true
  elsif (self == "paper" && arg == "rock")
    return true
  else return false
  end
end
