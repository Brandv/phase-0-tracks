# create class Word_up.
# Initialize class with prompt to ask word proposer to choose from three categories: Animals, World_Capitals, or Stanley Kubrick movies after 1990.
# Prompt Key_holder to enter the word or words which fits chosen category.
# Make the input hidden on terminal.
# Add secret_choice instance variable for the inputted word(s) (with lower casing)
# Add category instance variable.
# And guess_count instance variable set to 0.  

# Add method to split secret_choice into an 'word' array by spaces. 
# Add method to split characters of each array value into a new 'character' array.
# Add method to create new 'guess' string. 
# Add method to display "_" in place of chosen string letters.
# The 'guess' string will consist of a "_ " character for each length of each 'character' array. There will be a 'guess' string for each value in the 'word' array. [if multiple same letter, write method to change 'character' array for that letter to "_" or something so it won't only match that first matching letter.]

# Add method to prompt the code_breaker (word guesser) to guess a letter. 

#really struggled with this one. Couldn't change each value in a hash.

class Word_up
	#require 'io/console'
	attr_reader :secret_choice, :category, :words, :characters
	
	def initialize
		puts "Keeper of Secrets, choose your domain of an Animal, World Capital, or Stanley Kubrick movie after the 1990"
		@category = gets.chomp.downcase
		puts "Keeper of Secrets, tell me your secret #{@category}."
		@secret_choice = gets.chomp.downcase #STDIN.noecho(&:gets).chomp.downcase
		@guess_count  = 0
		@characters = {}
	end
	
	def secret_choice_splitter
		@words = @secret_choice.split(" ")
		
	end

	def words_splitter
		word_count = @words.length
		@words.each do |word|
			@characters["#{word}".intern] = word.chars
	 	end
	 	@characters
	end
	
	def display
		guess_hash = {}
		@characters.each_value do |word, char|
			char = "_ "
			guess_hash[word] = "_ "
		end
	end
	
end

trial = Word_up.new 
#p trial
trial.secret_choice_splitter
trial.words_splitter
trial.display













