#  require_relative 'game.rb'

#  phrase = "marv is trying to kill me"

#  #puts "Welcome to Hangman"

#  while true

# # puts "1 - Play"
# # puts "2 - Enter phrase"
# # puts "3 - Exit"
# # puts "Enter selection"
# # print "> "
# menu_selection = gets.chomp.downcase


#   case menu_selection.to_i

#  when 1
#       lives = 5
#       hangman = Game.new(phrase)
#       print hangman.display_answers_so_far, " LIVES: #{lives}"
 
#  while lives > 0
#           if hangman.is_game_won
#              puts "You win!"
#              exit
#            else

#           puts "\n "
#           guess = hangman.next_turn

#           if hangman.is_guess_correct(guess)
#             hangman.update_answers_so_far(guess)
#           else
#             lives -= 1
#           end
#           print "", hangman.display_answers_so_far, " LIVES: #{lives}"
#         end
#       end
  

#     when 2 
#       puts "Enter new phrase: "
#       print "> "
#       phrase = gets.chomp.downcase

#     when 3
#       break
#   end
#   puts "You Lose!" if lives == 0



# end

############################################################
############################################################
############################################################

class Hangman



  attr_accessor :word, :correct_letters, :wrong_count



  def initialize(word)
    @word = word.upcase
    @wrong_count = 0
    @correct_letters = container
  end

  #function to make a container array for guessed letters

  def container
    container = Array.new(word.length, '_')
  end

  def guess_letter(letter)

    letter = letter.upcase

    if word.include?(letter)

      word.each_char.with_index do |val, pos|
        if val == letter
         @correct_letters[pos] = val
        end
      end

    else
      @wrong_count += 1
    end
  end

  def valid_input?
    if word.match(/[^a-zA-Z]/)
      false

    else

      true

    end

  end


end