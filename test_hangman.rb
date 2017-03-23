require 'minitest/autorun'
require_relative 'game.rb'

class TestHangman < Minitest::Test

	def setup
    	@game = Game.new("marv is trying to kill me")
    end

    def test_split_phrase
    	assert_equal( ["m", "a", "r", "v", " ", "i", "s", " ", "t", "r", "y", "i", "n", "g", " ", "t", "o", " ", "k", "i", "l", "l", " ", "m", "e"], @game.split_phrase )
    end

    def test_initiate_answer_so_far
    	assert_equal(["_", "_", "_", "_", "/", "_", "_", "/", "_", "_", "_", "_", "_", "_", "/", "_", "_", "/", "_", "_", "_", "_", "/", "_", "_"], @game.answer_so_far)
    end

 	def test_is_guess_correct
        assert_equal(true, @game.is_guess_correct("m"))
    end

 	def test_is_guess_false
    	assert_equal(false, @game.is_guess_correct("b"))
    end

    def test_return_index_number_of_correct_guess
    	assert_equal([5,11,19], @game.indexs_of_correct_guess("i") )
    end

	def test_update_answers_so_far
   	 	@game.update_answers_so_far("m")
   	 	assert_equal(["m", "_", "_", "_", "/", "_", "_", "/", "_", "_", "_", "_", "_", "_", "/", "_", "_", "/", "_", "_", "_", "_", "/", "m", "_"], @game.answer_so_far )
  	end

  	def test_3_words
   	 	game = Game.new('i like cheese')
   	 	assert_equal(["i", "/", "_", "i", "_", "_", "/", "_", "_", "_", "_", "_", "_"], game.update_answers_so_far('i'))
   	    
   	end

 
 	def test_next_turn()
    	assert_equal("a", @game.next_turn())
  	end

  	def test_display_answers_so_far
    	assert_equal("_ _ _ _ / _ _ / _ _ _ _ _ _ / _ _ / _ _ _ _ / _ _", @game.display_answers_so_far)
  	end

  	def test_is_game_won
    	assert_equal(false, @game.is_game_won)
  	end

  	def test_correct_index_position_return
   	 	game = Game.new('week')
   	 	assert_equal([1,2], game.indexs_of_correct_guess('e'))
   	end

   	def test_false_index_position_return
   	 	game = Game.new('week')
   	 	assert_equal([], game.indexs_of_correct_guess('r'))
 	end

 	def test_false_index_position_multiple_word
   	 	game = Game.new('week one')
   	 	assert_equal([1,2,7], game.indexs_of_correct_guess('e'))
 	end
end