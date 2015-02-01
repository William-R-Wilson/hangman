class GameBoard

	def initialize
		@game_board = [
			["   ___    "],
			["   |  |   "],
			["   o  |   "],
			["  /|\\ |   "],
			["   |  |   "],
			["  / \\ |   "],
			["      |   "],
			["______|___"],
		]
		@body = ["o", "/", "|", "\\", "|", "/", "\\"]

	end

  attr_accessor :game_board
  
 

	def draw_gameboard
		puts game_board[0]
		puts game_board[1]
		puts game_board[2]
		puts game_board[3]
		puts game_board[4]
		puts game_board[5]
		puts game_board[6]
		puts game_board[7]
	end

	def update_board
		body_count = 0
		


end

board = GameBoard.new
board.draw_gameboard