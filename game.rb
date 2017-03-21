class Game

  attr_reader(:answer_so_far)

  def initialize(phrase)
    @phrase = phrase
    @answer_so_far = initiate_answer_so_far()
  end

  def split_phrase()
    return @phrase.split(//)
  end

  def initiate_answer_so_far()
    split_array = split_phrase()
    altered_array = []
    for letter in split_array
      if (letter == " ")
        altered_array << "/" 
      else
        altered_array << "_"
      end
    end
    @answer_so_far = altered_array
  end

   def is_guess_correct(guess)
    guess_correct = false
    split_phrase = split_phrase()

    for letter in split_phrase
      return true if letter == guess
    end
    return false
  end

  def indexs_of_correct_guess(guess)
    split_phrase = split_phrase()
    index_array = []
    counter = 0
    for letter in split_phrase
      #index = split_phrase.index(letter)
      index_array << counter if letter == guess
      counter += 1
    end
    return index_array
  end

 def update_answers_so_far(guess)
    index_array = indexs_of_correct_guess(guess)

    for index in index_array
      @answer_so_far[index] = guess
    end
  end

 def is_game_won
    for space in @answer_so_far
      return false if space == "_"
    end
    return true
  end

# game starts here
  def display_answers_so_far()
    return @answer_so_far.join(" ")
  end


  def next_turn()
    puts "Enter your guess"
    print "> "
    guess = gets.chomp.downcase
    return guess
  end




end