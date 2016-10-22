class Santa
	attr_reader :race
	attr_accessor :gender

	def initialize(gender, race, vessel)
		puts "Initializing Santa instance..."
		 @gender = gender
		 @race = race	
		 @vessel = vessel
		 @age = age(1)
		end
	
	def reindeer_rankings
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def speak
		puts "I am a #{@gender} #{@race}, slicing through the night upon my magnificent #{@vessel}!" 
		puts "Ho, ho, ho! Merry Christmas!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a goooood #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		reindeer_ranking.delete(reindeer)
		reindeer_ranking.push(reindeer)
	end

	def gender(new_gender)
		@gender = new_gender
	end

end
santas = []
gender = ["male", "female", "non-binary"]
race = ["Valar", "Maiar", "Shi'ar", "Kree" ]
vessel = ["Nautilus", "Shadowfax", "Nebuchadnezzar", "Flying Nimbus", "Serenity"]
until santas.length == 2
	santas.push(Santa.new(gender.sample, race.sample, vessel.sample))
end 
santas

#DRIVER CODE
p santas
#santas[1].speak
p santas[1].gender("male")
p santas[0].age
p santas





