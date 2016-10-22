
#How do I get it so it only prompts me to enter the name once?
def prompt
	puts "What is your name, agent?" #what if it is a three part name? Or has a suffix?
	real_name = gets.chomp.split
end
#how can I take only the return of a method and use it in another method. I want to do this without using a Class.
def name_swap
	real_name = prompt
	fake_lastname = real_name[0]
	fake_firstname = real_name[1]
	secret_name = [fake_firstname, fake_lastname]
end

def first_name_encrypt
vowels = ["a", "e", "i", "o", "u", "a"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
fake_firstname_letters = name_swap[0].chars
fake_firstname_letters.map! do |letter|
	if vowels.include?(letter) 
	#fake_firstname_letters[fake_firstname_letters.index(letter)] = vowels[vowels.index(letter)+1]
	vowels[vowels.index(letter)+1]
	elsif consonants.include?(letter)
	#fake_firstname_letters[fake_firstname_letters.index(letter)] = consonants[consonants.index(letter)+1]
	consonants[consonants.index(letter)+1]
	end
	#p fake_firstname_letters # to see where the problem is
end
fake_firstname_letters.join.capitalize	
end

def last_name_encrypt
vowels = ["a", "e", "i", "o", "u", "a"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]	
fake_lastname_letters = name_swap[1].chars
fake_lastname_letters.map! do |letter|
	if vowels.include?(letter) 
	#fake_lastname_letters[fake_lastname_letters.index(letter)] = vowels[vowels.index(letter)+1]
	vowels[vowels.index(letter)+1]
	elsif consonants.include?(letter)
	#fake_lastname_letters[fake_lastname_letters.index(letter)] = consonants[consonants.index(letter)+1]
	consonants[consonants.index(letter)+1]
	end
	#p fake_lastname_letters # to see where the problem is
end
fake_lastname_letters.join.capitalize	
end

def name_encrypt
	puts "Your codename is #{first_name_encrypt} #{last_name_encrypt}."
end
name_encrypt

=begin
monica morales
=end
_______________________________

# Create method to swap first and last name:
# Ask secret agent for their name
# get input and score it to variable, real_name
# split real_name into array of first and last name.
# run .capitalize to ensure proper case for names.
# set first name to variable fake_lastname.
# set last name to variable fake_firstname.
# set array[0] to fake_firstname.
# set array[1] to fake_lastname.
# run .join to convert real_name back to string. Maybe keep it as string, for now.

puts "What is your name, agent?" #what if it is a three part name? Or has a suffix?
def name_swap
	real_name = gets.chomp.split
	fake_lastname = real_name[0]
	fake_firstname = real_name[1]
	secret_name = [fake_firstname, fake_lastname]
	
end



# Create method to change all vowels to the next succeeding vowel.
# create an array for all the vowels.
# take fake_firstname and split it into an array with .chars
# loop through each value with .each and check to see if it matches with a character in the vowels array.
# 	if there is a match, find the vowel array index of matched vowel with .index.
# 	set vowel from name to equal index of vowel from vowel array + 1.
# join the modified array back to string.
# set real_name[0] to new string.
# repeat process for fake_firstname, except instead set new string to real_name[1].
