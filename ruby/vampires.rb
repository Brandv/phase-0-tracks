puts "What is your name?"
name=gets.chomp

puts "How old are you?"
age=gets.chomp
puts "What year were you born?"
year=gets.chomp.to_i
real_age=2016-year

puts "How do you feel about The Stinking Rose resturant in Beverly Hills?"
garlic=gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance=gets.chomp

if real_age==age
	age_check==true
else
	age_check==false
end
 
if garlic=="good"
	garlic=true
else
	garlic=false
end

if insurance=="yes"
	insurance=true
else
	insurance=false
end

if age_check && (garlic || insurance)
	puts "Probably not a vampire."
elsif !age_check && (!garlic || !insurance)
	puts "Probably a vampire."
elsif !age_check && !garlic && !insurance
	puts "Almost certainly a vampire."
elsif name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive"
end			