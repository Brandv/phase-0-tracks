#Word game Version 2.3.6.4.17
=begin

Create Word_up class.
initialize Word_up class with the following:
	Ask the user to chose a category between 3 categories. Set category choice to @category variable.
	Ask the a user for a secret word. Set secret word to @secret_word variable.
	set @guess_count variable to 0.

Create word_splitter method to take secret word string and split it up by word and store it into a @word array variable.

Create characters method to take each value in @word array and split into it's characters and store in an array. Use @words index to differentiate variable names of the related character arrays.

Create method to store @word array and characters arrays in a @storage hash as corresponding key and value pairs.

Create method to create @blank hash with the same keys, but replace each value of each character with a "_ ". # Might be tricky.

Create method to ask the guesser to guess a letter. 
store guessed letter in @guess variable. 
push @guess to @guessed_letters array.
set @guess_count to increment 1.

# This is where it gets hard. Not sure how to do this.
Create check method to loop through @storage hash to see if @guess matches a value. 
If so, return the key and the index of the matched value.

Create swap method to search through @blank hash and replace the index value of the key returned in check method. # Does that sound as unintelligible as it is to read?

Create display method to label and print @blank hash values and @guessed_letters array to screen.

# DRIVER CODE
new = Word_up.new	# returns 'new' instance of Word_up.
new.word_splitter	# splits @guess into array by " ". Returns array.
new.characters		# 





	
=end
