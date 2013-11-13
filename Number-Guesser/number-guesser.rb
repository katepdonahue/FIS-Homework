number = rand(1..100)
puts "Guess a number."
guess = gets.chomp.to_i
if guess == number
  puts "That's amazing! You got it right!"
else
  puts "Wrong. Cheer up, the odds were against you."
end

