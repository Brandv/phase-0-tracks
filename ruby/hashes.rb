=begin
Ask client for their name, age, number of children, theme, wallpaper or not.
Assign input to corresponding key.
Print the hash.
Ask the client if they would like to make any changes.
When client enters key, prompt for new value. Overwrite new value to key. If none, skip to print.
Print updated key.
=end

form = {
	name: "",
	age: "",
	children: "",
	theme: "",
	wallpaper: ""
}


puts "Interior Decor Form"
puts "Please enter your Name, Age, Number of children, Theme choice, and whether you would like wallpaper or not."

form[:name] = gets.chomp
form[:age] = gets.chomp.to_i
form[:children] = gets.chomp.to_i
form[:theme] = gets.chomp
form[:wallpaper] = gets.chomp

p form
puts "Are you sure you really want to go with that theme/wallpaper/age/name/number of children??"
amend = gets.chomp

case amend 
when "name"
	puts "What is your real name?"
	form[:name]=gets.chomp
when "age"
	puts "What is your real age?"
	form[:age]=gets.chomp
when "children"
	puts "How many children do you really have?"
	form[:children]=gets.chomp
when "theme"
	puts "What is your true theme?"
	form[:theme]=gets.chomp
when "wallpaper"
	puts "Do you really want wallpaper?"
	form[:wallpaper]=gets.chomp
when "done"
	
else
	puts "Not clear enough"
end
p form