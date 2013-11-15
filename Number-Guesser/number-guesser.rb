def play_again(reply)
  if reply == "y"
    return true
  elsif reply == "n"
    puts "Thanks for playing! Goodbye."
    return false
  else
    puts "I am but a humble computer and I don't understand very much. Goodbye."
    return false 
  end
end

reply = "y"

puts "Do you want to play a guessing game? (y or n)"
says = gets.chomp
if says == "n"
  puts "Goodbye then."
elsif says != "y"
  puts "I am but a humble computer and I don't understand very much. Goodbye."
elsif says == "y"
  puts "Pick two numbers and I will choose a number between the two (inclusive), then you can guess."
  puts "Your first number must be smaller than your second."
  reply = "y"
  while play_again(reply)
    puts "What is your first number?"
    num1 = gets.chomp.to_i
    puts "What is your second number?"
    num2 = gets.chomp.to_i
    if num1 > num2
      puts "Please don't do that. You broke the game."
      break
    end
    if num2 - num1 < 5
      puts "You're not really challenging yourself but I guess we can still play."
    end
    puts "Ok, let's play!"
    number = rand(num1..num2)
    puts "Guess a number between #{num1} and #{num2} (inclusive)."
    guess = gets.chomp.to_i
    if guess == number
      puts "That's amazing! You got it right!"
    else
      puts "Wrong. The number was #{number}. Cheer up, the odds were against you."
    end
    puts "Do you want to play again? (y or n)"
    reply = gets.chomp
  end
end


# def number_guesser(guess)
#   number = rand(1..100)
#   guess == number
# end