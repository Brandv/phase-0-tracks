module Shout
	def whisper #How can I define a method that takes an if statement with a class condition. "if @@'Class'" doesn't work.
		puts "Level a mountain."
	end
	
	def most_annoying_sound_in_world
		puts "Ask to listen to the radio or something."
	end
end

class Whisper
	 include Shout
end

class Most_annoying_sound_in_world
	include Shout
end

Black_Bolt = Whisper.new
Harry = Most_annoying_sound_in_world.new
Lloyd = Most_annoying_sound_in_world.new

Black_Bolt.whisper
Harry.most_annoying_sound_in_world




# module Shout
# 	def self.yell_angerly(words)
# 		words.upcase + "!!!" + " o:<"
# 	end

# 	def self.yell_happily(words)
# 		words.capitalize + "!" + " C:"
# 	end
# end

# p Shout.yell_angerly("Pop the bubble")
# p Shout.yell_happily("I'm ready")

