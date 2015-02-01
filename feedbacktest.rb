File.join(File.expand_path(File.dirname(__FILE__)), "..", "5desk.txt")
require_relative "lib/RandomWord.rb"
require_relative "lib/FeedBack.rb"

#word = RandomWord.new
feedback = FeedBack.new
puts feedback.word

#print FeedBack.word_board.join