english_football = {
	EPL: {
		Arsenal: {
			coach: "Arsene Wenger",
			players: [
				"Mesut Ozil!",
				"Laurent Koscielny!"]
		},
		Manchester_United: {
			coach: "Backpfeifengesicht",
			players: [
				"Zlatan",
				"There is only Zlatan"]
		}
	},	
	
	championship: {
		Norwich: {
			coach: "Not sure but stephen Fry is a co-owner!",
			players: [
				"Grant Holt?",
				"no clue"]
		},
		Fulham: {
			coach: "Not Martin Jol",
			players: [
				"Dempsey when he was good",
				"Brad Friedel :("]
		}
	},

	lower_leages_only_locals_follows: {
		Poor_old_Bolton: {
			coach: "not Owen Coyle",
			players: [
				"Jay Spearing?",
				"Loyal Mark Davies"]
		},
		Probably_MK_Dons: {
			coach: "some guy",
			players: [
				"promising striker",
				"veteran defender"]
		}
	}
}


puts "Who's the coach of Arsenal?"
puts english_football[:EPL][:Arsenal][:coach]

puts "Who plays for Manchester United?"
puts english_football[:EPL][:Manchester_United][:players]

puts "Does Owen Coyle still coach Bolton?"
if english_football[:lower_leages_only_locals_follows][:Poor_old_Bolton][:coach] == "Owen Coyle" 
		puts "Yes."
else
		puts "No."
end

