=begin
Create a Program to keep a record of successes that one could reference when needed. 
Each record will store a date, category of the challenge, brief description of the success, and whether you'd like to mark it as an exceptional success.

Users can create and retrieve data. They can also reclassify successes as they see fit.
=end

require "sqlite3"

# BUSINESS LOGIC
#create db
db = SQLite3::Database.new("success_album.db")

#create table
db.execute(<<-table
	CREATE TABLE IF NOT EXISTS Success(
	ID_pk INTEGER PRIMARY KEY,
	Date DATE,
	Category VARCHAR(255),
	Description VARCHAR(255),
	Exceptional INT(1)
	)
table
)

#add rows
def add_success(db, success_date, success_category, success_description, success_exceptional)
	db.execute("INSERT INTO Success (Date, Category, Description, Exceptional) values (?, ?, ?, ?)", [success_date, success_category, success_description, success_exceptional]
	)
end
#create table
# db.execute(<<-table
# 	CREATE TABLE IF NOT EXISTS Category(
# 		ID_pk INTEGER PRIMARY KEY,
# 		Category VARCHAR(255),
# 	)
# table
# )

# USER INTERFACE
puts "Welcome to your Success Album"
puts "To add another success, please give the following information:"
puts "Date (yyyy-mm-dd format)" 
success_date = gets.chomp
puts "Which category does this success fit into?"
puts "[1] Incorporating a new concept"
puts "[2] Resolving an unexpected result"
puts "[3] Non-technical success"
chosen_category = gets.chomp.to_i
	case chosen_category
	when 1 then success_category = "Incorporating a new concept"
	when 2 then success_category = "Resolving an unexpected result"
	when 3 then success_category = "Non-technical success"
	end
puts "Give a brief description of the success (255 char limit)"
success_description = gets.chomp
puts "Would you consider this success particularly exceptional? (yes or no)"
success_exceptional = gets.chomp
	if success_exceptional == "yes"
		success_exceptional = 1
	elsif success_exceptional == "no"
		success_exceptional = 0
	else 
		puts "Not a clear answer"
		success_exceptional = 0
	end

add_success(db, success_date, success_category, success_description, success_exceptional)

