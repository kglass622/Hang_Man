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


 
end