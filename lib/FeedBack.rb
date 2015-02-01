
class FeedBack

	def initialize
		@word_board = []
		create_word_board
	end

	attr_accessor :word_board
	def create_word_board
		@word.length.times do
			@word_board.push(" _")
		end
	end



#end class
end
