File.join(File.expand_path(File.dirname(__FILE__)), "..", "5desk.txt")
require_relative "lib/HangMan.rb"
require_relative "lib/GameEngine.rb"

def load_game
	content = File.open("games/saved.yaml", "r") {|file| file.read}
	YAML.load(content)
end


puts "Do you want to load your saved game? (y/n)"
input = gets.chomp
if input == "y"
	play = load_game
	play.print_out
else	
	play = Round.new
	word = RandomWord.new
end


play.play_game