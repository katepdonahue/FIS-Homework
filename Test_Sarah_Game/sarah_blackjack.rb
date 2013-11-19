#Blackjack!

##Objective
#Practice conditional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  
# After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
# A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. 
# If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.
class BlackJack
        puts "I'm feeling dangerous. Let's play Blackjack."
        puts "You in? (y/n)"

        def initialize
                @card1 = rand(1..11)
                @card2 = rand(1..11)
                @card3 = rand(1..11)
                @card4 = rand(1..11)
                @score = 0
        end
        attr_reader :card1, :card2, :card3, :card4, :score
        def yes_or_no
                text = gets.chomp
                if text == "y"
                        puts "Game on."
                        puts "You will get two cards initially and you can hit up to two times."
                        puts "If your score surpasses 21, then you lose.. and I win."
                elsif text == "n"
                        puts "Not feeling dangerous? Ok, come back when you are."        
                else
                        puts "Er, I don't understand. Sorry, maybe next time."
                end
        end

        def hits
                @score = @card1 + @card2
                puts "Here are your first two cards: #{@card1} and #{@card2}. Your total score is #{@score}."
                if @score.to_i == 21
                        puts "AHHH YOU WON SO EARLY IN THE GAME HOW'D YOU DO IT I QUIT"
                        return
                end
                puts "Would you like to hit or stay?"
                text = gets.chomp
                if text == "hit"
                        @score = @score + @card3
                        puts "Your third card is #{@card3} and your new score is #{@score}."
                        if @score.to_i > 21
                                puts "Ruh roh, you're over 21. I win!"
                                return
                        elsif @score.to_i == 21
                                puts "You win!"
                                return
                        end
                        puts "Would you like to hit or stay?"
                        text2 = gets.chomp
                        if text2 == "hit"
                                @score = @score + @card4
                                puts "Your fourth and final card is #{@card4} and your new score is #{@score}."
                                if @score.to_i > 21
                                        puts "Ruh roh, you're over 21. I win!"
                                        return
                                elsif @score.to_i == 21
                                        puts "You win!"
                                        return
                                end
                        elsif text2 == "stay"
                                puts "Okay. You didn't hit 21, so I win!"
                                return
                        end
                elsif text == "stay"
                        puts "Okay. You didn't hit 21, so I win!!"
                        return
                end        
        end

        def play
                yes_or_no
                hits
        end
end

game = BlackJack.new
game.play
