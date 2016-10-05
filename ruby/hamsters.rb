puts "What's your hamster's name?"
name = gets.chomp
puts "The hamsters name is #{name}"
puts
puts "volume level of hamster?"
squeak = gets.chomp
squeak.to_i
puts "The volume is #{squeak}"
puts
puts "What color?"
fur = gets.chomp
puts "The fur color is #{fur}" 
puts
puts "Should you adopt?"
adopt = gets.chomp

	if adopt == "yes"
		puts "Available for adoption"
	elsif adopt == "no"
		puts "Not available for adoption"
	else 
		puts "Wrong input"
	end
puts
puts "How old do you think the hamster is?"
age = gets.chomp
age.to_i
if age == ""
	age = nil
end
puts "The hamster is #{age} years old"



