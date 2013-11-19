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

        def yes_or_no(text, play)
                # text = gets.chomp
                if text == "y"
                        puts "Game on."
                        puts "You will get two cards initially and you can hit up to two times."
                        puts "If your score surpasses 21, then you lose.. and I win."
                        play = true
                elsif text == "n"
                        puts "Not feeling dangerous? Ok, come back when you are." 
                        play = false       
                else
                        puts "Er, I don't understand. Sorry, maybe next time."
                        play = false
                end
        end

        def score
                if turns == 1
                        card_a + card_b
                elsif turns == 2
                        card_a + card_b + card_c
                elsif turns > 2
                        card_a + card_b + card_c card_d
                end
        end

        def wins?
                score == 21
        end

        def initial_pos
                puts "Here are your first two cards: #{card1} and #{card2}. Your total score is #{score(0)}."
        end

        def early_win
                puts "AHHH YOU WON SO EARLY IN THE GAME HOW'D YOU DO IT I QUIT"
        end

        def hits(text)
                # puts "Would you like to hit or stay?"
                # text = gets.chomp
                if text == "hit"
                        puts "Your new card is #{turn == 1 ? card_c : card_d} and your new score is #{score}."
                        turns += 1
                elsif text == "stay"
                        puts "Okay, your score is #{score}."
                        turns += 2
                else
                        puts "Er, I don't understand. Sorry, you have exited the game."
                end
        end
                        # if score(card_a, card_b, card_c, card_d) > 21
                        #         puts "Ruh roh, you're over 21. I win!"
                        #         return
                        # elsif wins?
                        #         puts "You win!"
                        #         return
                        # end
        #                 puts "Would you like to hit or stay?"
        #                 text2 = gets.chomp
        #                 if text2 == "hit"
        #                         @score = @score + @card4
        #                         puts "Your fourth and final card is #{@card4} and your new score is #{@score}."
        #                         if @score.to_i > 21
        #                                 puts "Ruh roh, you're over 21. I win!"
        #                                 return
        #                         elsif @score.to_i == 21
        #                                 puts "You win!"
        #                                 return
        #                         end
        #                 elsif text2 == "stay"
        #                         puts "Okay. You didn't hit 21, so I win!"
        #                         return
        #                 end
        #         elsif text == "stay"
        #                 puts "Okay. You didn't hit 21, so I win!!"
        #                 return
        #         end        
        # end

        def play
                in_play = true
                intro
                response = gets.chomp
                yes_or_no(response, in_play)
                while in_play
                        initial_pos
                        while turns < 3
                                puts "Would you like to hit or stay?"
                                ans = gets.chomp
                                hit(ans)
                        end
        end
end

game = BlackJack.new
game.play
