#Word game Version 2.3.6.4.17
=begin

Create Word_up class.
initialize Word_up class with the following:
	Ask the user to chose a category between 3 categories. Set category choice to @category variable.
	Ask the a user for a secret word. Set secret word to @secret_word variable.
	set @guess_count variable to 0.

Create word_splitter method to take secret word string and split it up by word and store it into a @word array variable.

Create characters method to take each value in @word array and split into it's characters and store in an array. Use @words index to differentiate variable names of the related 'character_index' arrays.

Create word_store method to store @word array and characters arrays in a @storage hash as corresponding key and value pairs.

Create guess_store method to create @progress hash with the same keys, but replace each value of each character with a "_ ". # Might be tricky.

Create method to ask the guesser to guess a letter. 
	store guessed letter in @guess variable. 
	push @guess to @guessed_letters array.
	set @guess_count to increment 1.

# This is where it gets hard. Not sure how to do this.
Create check method to loop through @storage hash to see if @guess matches a value. 	.include?("")
	If so, return the key and the index of the matched value.

Create swap method to search through @progress hash and replace the index value of the key returned in check method. # Does that sound as unintelligible as it is to read?

Create display method to print category and label and print @blank hash values and @progress array to screen.

# DRIVER CODE (Is this even considered driver code??)
new = Word_up.new				# returns 'new' instance of Word_up.
new.word_splitter(@secret_word)	# splits @word into array by " ". Returns array.
new.characters					# splits each @word value into 'character_index' array. Returns a character_index array for each value of @word.
new.word_store 					# creates @storage hash with @word values as keys and character_index arrays as corresponding values. Returns a hash.
new.blank_store					# creates @blank hash 




	
=end
