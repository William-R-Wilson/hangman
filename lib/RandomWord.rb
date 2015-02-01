

class RandomWord	

	def initialize
		@word = pick_random.downcase.split(//).slice(0..-2)
	end

	attr_accessor :word

	def pick_random #I should experiment with this to take the filename as a parameter so it is resuable
		chosen_line = nil
		File.foreach("5desk.txt").each_with_index do |line, number|
			chosen_line = line if rand < 1.0/(number+1)
		end
		return chosen_line
	end

	#end class
end



