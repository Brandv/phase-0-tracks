require_relative "word_up"

describe Word_up do
	let(:new_game) { Word_up.new}

	it "guesses a letter" do 		
		expect(new_game.guess("a")).to_eq "a"	#I know I don't have a guess method set up, but I will (though it'll probably come as a user input and not a method argument)

	# How can I test my code if most of my methods don't have parameters but instead take user input for their variable/argument data?

	end

end