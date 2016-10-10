
p "How many employees do we suspect?"
number=gets.chomp.to_i
x=1 

until x > number
    
	puts "What is your name?"
	name=gets.chomp
	
	puts "How old are you?"
	age=gets.chomp.to_i
	puts "What year were you born?"
	year=gets.chomp.to_i
	real_age=2016-year
	
	puts "Do you like The Stinking Rose resturant in Beverly Hills?"
	garlic=gets.chomp
	
	puts "Would you like to enroll in the company's health insurance?"
	insurance=gets.chomp
	
	case 
	when real_age==age then real_age=true
	else real_age=false
	end	
	
	if garlic=="yes"
		garlic=true
	else
		garlic=false
	end
	
	if insurance=="yes"
		insurance=true
	else
		insurance=false
	end
	
	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	elsif !real_age && !garlic && !insurance
		puts "Almost certainly a vampire."
	elsif !real_age && (!garlic || !insurance)
		puts "Probably a vampire."
	elsif real_age && (garlic || insurance)
		puts "Probably not a vampire."
	else
		puts "Results inconclusive"
	end	
	x+=1
# can't figure out how to add a simple line break between surveys.
end	

p "List all your allergies. Type 'done' when finished."
allergy=gets.chomp

until allergy=="done"
	if allergy=="sunshine"
		p "Probably a vampire"
		break
	else  
		allergy=gets.chomp
	end	
p "Actually, never mind! What do these questions have to do with anything? Let's all be friends." # -_-
end	

# I'm unhappy with this code. It's pretty breakable and I had trouble getting to it to only accept valid responses. 