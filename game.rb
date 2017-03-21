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
  




end