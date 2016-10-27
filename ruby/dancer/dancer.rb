class Dancer
	attr_accessor :name, :age, :card_list

	def initialize(name, age)
		@name = name
		@age = age
		@pants = "grey"
		@card_list = []
	end

	def pirouette
		 "*twirls*"
	end

	def bow
		 "*bows*"
	end

	def queue_dance_with(partner)
		@name = partner
		@card_list << @name
	end

	def card
		card_list
	end

	def begin_next_dance

		"Now dancing with #{@card_list.slice!(0)}."	#card_list[0] should be "Mikhail Baryshnikov"
		
	end

	def pants(color)
		@pants = color
		 "#{@name} is now wearing #{@pants} pants!"
	end


end
# dancer = Dancer.new("Misty Copeland", 33)
# dancer.pants("green")