def play_again(replay)
  if replay == "y"
    return true
  elsif replay == "n"
    puts "Thanks for playing! Goodbye."
    return false
  else
    puts "I am but a humble computer and I don't understand very much. Goodbye."
    return false 
  end
end

def guess_again(reguess, comp_number)
  if reguess == "y"
    return true
  elsif reguess == "n"
    puts "The number was #{comp_number}. Cheer up, the odds were against you."
    return false
  else
    puts "I am but a humble computer and I don't understand very much. Goodbye."
    return false 
  end
end


replay = "y"

puts "Do you want to play a guessing game? (y or n)"
says = gets.chomp
if says == "n"
  puts "Goodbye then."
elsif says != "y"
  puts "I am but a humble computer and I don't understand very much. Goodbye."
elsif says == "y"
  puts "Pick two numbers and I will choose a number between the two (inclusive), then you can guess."
  puts "Your first number must be smaller than your second."
  replay = "y"
  while play_again(replay)
    reguess = "y"
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
    while guess_again(reguess,number)
      puts "Guess a number between #{num1} and #{num2} (inclusive)."
      guess = gets.chomp.to_i
      if guess == number
        puts "That's amazing! You got it right!"
        break
      else
        puts "Wrong. Would you like a hint? (y or n)"
        want_hint = gets.chomp
        if want_hint == "y"
          if number - guess > 0
            puts "Higher."
          else
            puts "Lower."
          end
        elsif want_hint == "n"
          exit
        else
          puts "I am but a humble computer and I don't understand you."
        end
        puts "Would you like to guess again? (y or n)"
        reguess = gets.chomp
      end
    end
    puts "Do you want to play again? (y or n)"
    replay = gets.chomp
  end
end
