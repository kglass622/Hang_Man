require 'minitest/autorun'
require 'rack/test'
require_relative './app.rb'

class TestApp < Minitest::Test
	include Rack::Test::Methods

	def app
		PersonalDetailsApp
	end