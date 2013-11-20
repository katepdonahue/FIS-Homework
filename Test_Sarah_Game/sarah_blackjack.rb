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
        def intro
                puts "I'm feeling dangerous. Let's play Blackjack."
                puts "You in? (y/n)"
        end

        def initialize
                @card1 = rand(1..11)
                @card2 = rand(1..11)
                @card3 = rand(1..11)
                @card4 = rand(1..11)
                @turns = 1
        end

        attr_accessor :card1, :card2, :card3, :card4, :turns

        def yes_or_no(text)
                if text == "y"
                        puts "Game on."
                        puts "You will get two cards initially and you can hit up to two times."
                        puts "If your score surpasses 21, then you lose.. and I win."
                        return true
                elsif text == "n"
                        puts "Not feeling dangerous? Ok, come back when you are." 
                        return false       
                else
                        puts "Er, I don't understand. Sorry, maybe next time."
                        return false
                end
        end

        def score
                if turns == 1
                        card1 + card2
                elsif turns == 2
                        card1 + card2 + card3
                elsif turns > 2
                        card1 + card2 + card3 + card4
                end
        end

        def wins?
                score == 21
        end

        def initial_pos
                puts "Here are your first two cards: #{card1} and #{card2}. Your total score is #{score}."
        end

        def early_win
                puts "AHHH YOU WON SO EARLY IN THE GAME HOW'D YOU DO IT I QUIT"
        end

        def hits(text)
                if text == "hit"
                        @turns += 1
                        puts "Your new card is #{turns == 2 ? card3 : card4} and your new score is #{score}."
                elsif text == "stay"
                        puts "Okay, your score is #{score}."
                else
                        puts "Er, I don't understand. Please type 'hit' or 'stay'."
                end
        end

        def play
                intro
                response = gets.chomp
                in_play = yes_or_no(response)
                while in_play == true
                        initial_pos
                        while turns < 3 && score < 21
                                puts "Would you like to hit or stay?"
                                ans = gets.chomp
                                hits(ans)
                                if ans == "stay"
                                        break
                                end
                        end
                        if wins?
                                if turns == 1
                                        early_win
                                else
                                puts "You win!"
                                end
                        elsif score > 21
                                puts "Ruh roh, you're over 21. I win!"
                        else
                                puts "Okay. You didn't hit 21, so I win!!"
                        end
                        in_play = false
                end
        end

end

new_game = BlackJack.new
new_game.play
