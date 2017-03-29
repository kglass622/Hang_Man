# class Game

#   attr_reader :answer_so_far#, :secret_word, :container, :wrong_count, :guesses

#   def initialize(phrase)
#     @phrase = phrase
#     @answer_so_far = initiate_answer_so_far()
#   end

#   def split_phrase()
#     return @phrase.split(//)
#   end

#   def initiate_answer_so_far()
#     split_array = split_phrase()
#     altered_array = []
#     for letter in split_array
#       if (letter == " ")
#         altered_array << "/" 
#       else
#         altered_array << "_"
#       end
#     end
#     @answer_so_far = altered_array
#   end

#    def is_guess_correct(guess)
#     guess_correct = false
#     split_phrase = split_phrase()

#     for letter in split_phrase
#       return true if letter == guess
#     end
#     return false
#   end

#   def indexs_of_correct_guess(guess)
#     split_phrase = split_phrase()
#     index_array = []
#     counter = 0
#     for letter in split_phrase
#       #index = split_phrase.index(letter)
#       index_array << counter if letter == guess
#       counter += 1
#     end
#     return index_array
#   end

#  def update_answers_so_far(guess)
#     index_array = indexs_of_correct_guess(guess)

#     for index in index_array
#       @answer_so_far[index] = guess
#     end
#       answer_so_far
#   end

#  def is_game_won
#     for space in @answer_so_far
#       return false if space == "_"
#     end
#     return true
#   end

# # game starts here
#   def display_answers_so_far()
#     return @answer_so_far.join(" ")
#   end


#   def next_turn()
#     puts "Enter your guess"
#     print "> "
#     guess = gets.chomp.downcase
#     return guess
#   end

# end

##########################################################################################################
##########################################################################################################
##########################################################################################################

class Secret_word



  attr_accessor :secret_word, :container, :wrong_count, :guesses

  def initialize(secret_word)
    @secret_word = secret_word.upcase
    @container = array_length
    @wrong_count = 0
    @guesses = []
  end

  def array_length
    Array.new(secret_word.length, ' _')
  end

  def match_letters(letter_guess)
    @guesses << letter_guess.upcase
    @guesses << ' '
    letter_guess = letter_guess.upcase

    if secret_word.include?(letter_guess)

      secret_word.each_char.with_index do |letter, index_position|

        if letter_guess == letter

          container[index_position] = letter

        end

      end 

    else

      @wrong_count += 1

    end

  end



  def input_validation(bad)

    if secret_word.match(/[^A-Za-z]/) 
      false
    else
      true
    end 
  end

  def loser?
    if wrong_count == 6
      true
    else
      false
    end
  end

  def donot_repeat(letter_repeat)

    if guesses.include?(letter_repeat)

      true
    else
      false

    end

  end

  def stick_it_in_now

  end



end