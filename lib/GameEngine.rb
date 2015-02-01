require "yaml"


class Round

	def initialize
		@game = Game.new
		@turns = @game.word.length
		@score = 0
		@input = ""
		@players_answer = ""
		@increment_turn = true
		@word_board = []
		create_word_board
		print_out
	end

	attr_accessor :turns, :score, :game, :input, :players_answer, :increment_turn
	attr_accessor :word_board

	def create_word_board
		@game.word.length.times do
			@word_board.push(" _")
		end
	end

	def take_guess
		puts "Guess a letter!"
		print ">"
		@input = gets.chomp.downcase
		if @input == "exit"
			exit
		elsif @input == "save"
			save_game
		elsif @input == "load"
			load_game 
		else
			@game.guesses.push(input)
			compare_guess_to_word
		end
	end

	def save_game
		Dir.mkdir("games") unless Dir.exist? "games"
		filename = "games/saved.yaml"
		File.open(filename, "w") do |file|
			file.puts YAML.dump(self)
		end
	end




	def compare_guess_to_word
		i = 0
		while i <= @game.word.length
			if @input == @game.word[i] 
				@word_board[i] = input
				@players_answer = @word_board.join.strip
				@increment_turn = false
				i += 1
			else
				i += 1
			end
		end
	end

	def count_turns
		if @increment_turn == true
			@turns -= 1
		else 
			@turns = @turns
		end

	end

	def print_out
		print "#{@word_board.join}    Guesses: #{@game.guesses.join} Turn #{@turns}\n"
	end

	def play_game
		the_word = @game.word.join.strip
		puts "You have #{@turns} turns to guess the word"
		while @turns > 0
			if the_word == @players_answer 
				puts "You won!"
				@score += @turns
				puts "Your score was #{@score}"
				exit
			else
				take_guess
				count_turns
				@increment_turn = true
				print_out
			end
		end
		puts "You failed! The word was #{the_word}"
	end
#end class
end

