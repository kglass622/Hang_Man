require 'sinatra'
# require_relative 'board.rb'
# require_relative 'sequential_AI.rb'
# require_relative 'random_AI.rb'
# require_relative 'unbeatable.rb'

enable :sessions

class PersonalDetailsApp < Sinatra::Base

	get '/' do
		erb :hang_man
	end

	# get '/' do
	# 	erb :welcome#, :tic_tac_toe
	# end


# post '/names' do
# 	session[:p1_name] = params[:p1_name_input].capitalize
# 	session[:p2_name] = params[:p2_name_input].capitalize

# 	if session[:p1_name] == '' || session[:p2_name] == ''
# 		redirect '/'
# 	end

# 	erb :secret_word, :locals => {:p1 => session[:p1_name], :p2 => session[:p2_name]}
# end

# get '/secret_word' do

# 	erb :secret_word, :locals => {:p1 => session[:p1_name], :p2 => session[:p2_name]}
# end

# post '/secret_word' do
# 	session[:secret_word] = params[:secret_word_input]
# 	session[:hangman] = Word.new(params[:secret_word_input].upcase)

# 		if session[:hangman].valid_input? == false
# 			redirect '/secret_word'
# 		end

# 		redirect '/firstguess'
# end

# get '/firstguess' do
# 	session[:underscores] = session[:hangman].underscores.join
# 	session[:already] = [].join
# 	session[:countdown] = session[:hangman].wrong
# 	# session[:already] = session[:hangman].already_guessed(session[:guess])

# 		if session[:countdown] == 0
# 			erb :lose, :locals => {:p1 => session[:p1_name], :p2 => session[:p2_name], :secret => session[:secret_word]}
# 		else
# 			erb :guess, :locals => {:already => session[:already], :guess => session[:guess], :wrong => session[:countdown], :underscores => session[:underscores], :secret => session[:hangman], :p1 => session[:p1_name], :p2 => session[:p2_name]}
# 		end
# end


# get '/game' do
# 	session[:underscores] = session[:hangman].underscores.join
# 	session[:already] = session[:hangman].already_guessed(session[:guess]).join(', ')
# 	session[:countdown] = session[:hangman].wrong

# 	# session[:already] = session[:hangman].already_guessed(session[:guess])



# 		if session[:countdown] == 0
# 			erb :lose, :locals => {:p1 => session[:p1_name], :p2 => session[:p2_name], :secret => session[:secret_word]}
# 		else
# 			erb :guess, :locals => {:already => session[:already], :guess => session[:guess], :wrong => session[:countdown], :underscores => session[:underscores], :secret => session[:hangman], :p1 => session[:p1_name], :p2 => session[:p2_name]}
# 		end

# end





# post '/guess' do

# 	session[:guess] = params[:guess_input]

# 	session[:hangman].guess_letter(session[:guess])



# 		if session[:hangman].underscores.include?('_ ')

# 			redirect '/game' 

# 		else

# 			erb :win, :locals => {:p1 => session[:p1_name], :p2 => session[:p2_name]}

# 		end

# 			# index_array = []

# 			# word_array = session[:hangman].to_s.chars

# 			# index_array = word_array.each_index.select{|i| word_array[i] == guess}



# 			# index_array.each do |ind|

# 			# 	underscore = session[:underscores]

# 			# 	underscore[ind] = guess

# 			# end	

		

 end