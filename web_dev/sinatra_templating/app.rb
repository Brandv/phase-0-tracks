# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
	

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/table' do
	  @students = db.execute("SELECT * FROM students")
	erb :table
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS campuses(
    id INTEGER PRIMARY KEY,
    campus VARCHAR(255)
	)
	SQL
  db.execute(create_table_cmd)

	# add campus fn
	def add_campus(db, campus)
		db.execute("INSERT INTO campuses (campus) values (?)", [campus])
	end

  campuses = db.execute("SELECT * FROM campuses")
	# if campuses table is empty, put some initial values in it
	if campuses == []
		add_campus(db, "SF")
		add_campus(db, "SD")
		add_campus(db, "NYC")
		add_campus(db, "CHI")
		add_campus(db, "SEA")	
	end


# add new campuses
get '/campus/new' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :new_campus
end

# method for creating new campus
post '/campuses' do

  db.execute("INSERT INTO campuses (campus) VALUES (?)", [params['campus']])
  redirect '/campus_list'
end

# campus list
get '/campus_list' do
	@campuses = db.execute("SELECT * FROM campuses")
	erb :campus_list
end