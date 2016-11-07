=begin
Create a Program to keep a record of successes that one could reference when needed. 
Each record will store a date, category of the challenge, brief description of the success, and whether you'd like to mark it as an exceptional success.

Users can create and retrieve data. They can also reclassify successes as they see fit.
=end

require "sqlite3"

# BUSINESS LOGIC
#create db
db = SQLite3::Database.new("success_album.db")
# db.results_as_hash = true


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
	when 2 then puts "Which successes do you want to remember?"

		remember_success
	# when 3 then modify_success	
	# when 4 then break
	end
end

def date
	puts "Date (yyyy-mm-dd format)" 
	success_date = gets.chomp
end

def category
	puts "Which category does this success fit into?"
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



def looper(selection, selection_method)
	input = ""
	loop do 
		selection_method
		puts "Would you like to do now?"
	end
end

# print db.execute("select * from success")
#add rows
def add_success(db, success_date, success_category, success_description, success_exceptional)
	db.execute("INSERT INTO Success (Date, Category, Description, Exceptional) values (?, ?, ?, ?)", [success_date, success_category, success_description, success_exceptional]
	)
end


def remember_success(db, sort)
	puts "All of them?"
	print db.execute("select date, description from success")

end

# USER INTERFACE
puts "Welcome to your Success Album."

# user_query
# input = gets.chomp.to_i
# selection(db, input)
k = remember_success(db,"*")
p k.class

# puts "To add another success, please give the following information:"

