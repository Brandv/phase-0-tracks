# Query Parameter: Route where parameters are located in the query string (in the URL to the right of the ?. Written in key/value pairs. Ex: www.google.com/?key=value&key=value)
# Route Parameter: Route where parameter value is entered after "/". Ex: .com/route/[parameter value]
# Parameters are case sensitive.


# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE ID=?", params[:id])
  student.to_s
end

get "/contact/:Address/:house" do
  "Our address is #{params[:Address]} and I live in a #{params[:house]}."
end

get "/great_job" do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

get "/:first&:second" do
  x = params[:first].to_i + params[:second].to_i
  x.to_s

end




# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#    response = ""
#   student.each do |student|
#     # response << "ID: #{student['id']}<br>"
#     response << "Name: #{student['name']}<br>"
#     response << "Age: #{student['age']}<br>"
#     response << "Campus: #{student['campus']}<br><br>"
#   end
#   response
# end