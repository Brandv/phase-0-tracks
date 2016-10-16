pasta_ingredients = ["pasta", "marinara sauce", "bell pepper", "onion", "garlic", "tomato"]

guests_diet_restrictions = {
  "Amy" => "meat",
  "Brandon" => "lactose",
  "Caroline" => "eggs",
  "Daryl" => "peanuts"
}

#iterate through pasta ingredients array
puts "Pasta ingredients before .each:"
p pasta_ingredients

pasta_ingredients.each do |ingredient|
	p "We gotsa lotta #{ingredient}!"
end

#iterate through guests_dietary_restrictions hash
puts "Guest's dietary restrictions before .each"
p guests_diet_restrictions

guests_diet_restrictions.each do |guest, restriction|
	p "Keep the #{restriction} away from #{guest}!"
end

#iterate through pasta ingredients array
puts "Pasta ingredients before .map!:"
p pasta_ingredients

pasta_ingredients.map! do |ingredient|
	"We gotsa lotta #{ingredient}!"
end
p pasta_ingredients

#release 2

#1 
arr = ["why", "hello", "young man"]
def no_short_words(arr)
	arr.each do |value|
		if value.length < 5
			arr.delete(value)
		end
	end
end
no_short_words(arr)

#2
