require_relative "RandomWord.rb"

class Game
	
	def initialize
		puts "New game initialized"
		@guesses = []
		@word = RandomWord.new.word
	end

	
	attr_accessor :word, :guesses

#end class
end


