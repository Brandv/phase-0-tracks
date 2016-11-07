=begin
Create a Program to keep a record of successes that one could reference when needed. 
Each record will store a date, category of the challenge, brief description of the success, and whether you'd like to mark it as an exceptional success.

Users can create and retrieve data. They can also reclassify successes as they see fit.
=end

require "sqlite3"

# BUSINESS LOGIC
#create db
db = SQLite3::Database.new("success_album.db")
db.results_as_hash = true

#create table
db.execute(<<-table
	CREATE TABLE IF NOT EXISTS Success(
	ID_pk INTEGER PRIMARY KEY,
	Date DATE,
	Category VARCHAR(255),
	Description VARCHAR(255),
	Exceptional INT(1),
	FOREIGN KEY (Category) REFERENCES category(id)
	)
table
)

#create table
db.execute(<<-table
	CREATE TABLE IF NOT EXISTS Category(
	ID_pk INTEGER PRIMARY KEY,
	Category VARCHAR(255)
	)
table
)
 
def date
	puts "Date (yyyy-mm-dd format)" 
	success_date = gets.chomp
end

def category
	puts "[1] Incorporating a new concept"
	puts "[2] Resolving an unexpected bug or error"
	puts "[3] Non-technical success"
	chosen_category = gets.chomp.to_i
	case chosen_category
	when 1 then success_category = "Incorporating a new concept"
	when 2 then success_category = "Resolving an unexpected bug or error"
	when 3 then success_category = "Non-technical success"
	end
end

def description
	puts "Give a brief description of the success (255 char limit)"
	success_description = gets.chomp
end

def exceptional
	success_exceptional = ""
	until success_exceptional.class == Fixnum
	puts "Would you consider this success particularly exceptional? (yes or no)"
	success_exceptional = gets.chomp.downcase
		if success_exceptional == "yes"
			success_exceptional = 1
		elsif success_exceptional == "no"
			success_exceptional = 0
		else 
			puts "Please give a yes or no answer."
		end
	end
	success_exceptional
end

def user_query
puts "What would you like to do?"
puts "[1] Log a new success."
puts "[2] Remember a past success."
puts "[3] Modify a past success."
puts "[4] Exit your Success Album"
end

def selection(db, selection)
	case selection 
	when 1 then puts "To add a success, please give the following information:"
		add_success(db, date, category, description, exceptional)
	# when 2 then puts "Which successes do you want to remember?"
	# 	puts "[1] All successes"
	# 	puts "[2] Success by category"
	# 	puts "[3] Successes by importance"
	# 	success_sort = gets.chomp.to_i
	# 	if success_sort == 1
	# 		db.execute(SELECT * FROM success).each do |success|
	# 			puts "On #{"date"} I #{description}."
	# 		end
	# 	end
	when 3 then puts "What is the date of the success you want to modify? (yyyy-mm-dd)"
		change_date  = gets.chomp
		puts "What do you want to change?"
		puts "Date, Category, Description, or Exceptional?"
		change_column = gets.chomp
		puts "What is the new value?"
		new_value = gets.chomp
		modify_success(db, change_column, change_date, new_value)
	# when 4 then break
	end
end


# add rows
def add_success(db, success_date, success_category, success_description, success_exceptional)
	db.execute("INSERT INTO Success (Date, Category, Description, Exceptional) VALUES (?, ?, ?, ?)", [success_date, success_category, success_description, success_exceptional]
	)
end

# recall row --Need help with this function
def remember_success(db, sort)
	puts "All of them?"
	print db.execute("SELECT date, description FROM success")

end

# modify row --Did my best to follow rubydocs but still doesn't work 
# (http://sqlite-ruby.rubyforge.org/sqlite3/faq.html#538670816)
def modify_success(db, change_column, change_date, new_value)
	db.execute("UPDATE success SET ? = ? WHERE Date = ?", change_column, new_value, change_date)
end

# USER INTERFACE
puts "Welcome to your Success Album."
exit = ""
until exit == 4
user_query
input = gets.chomp.to_i
selection(db, input)
exit = input
end 
puts "\n Success is a habit, not an act. Keep logging."

