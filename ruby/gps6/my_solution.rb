# Virus Predictor

# I worked on this challenge [with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is used to load local file data.
# Require is a builtin method. require_relative is a compliment to allow you load another ruby file. require_relative is used more for locally self-contained related files. Require is used more frequently to get data from a solid source or database. Require_relative requires a specific path to a local file.
require_relative 'state_data'

class VirusPredictor

# default method to assign state to new instances of VirusPredictor. Contains 3 parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls two other methods with 3 a and 2 rguments respectively.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private  

# Determines number_of_deaths variable based on population_density condition. prints out the string. 
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density 
      when @population_density >= 200 
        then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 
        then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 
        then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 
        then  number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Determines speed variable based on population_density condition. interpolates speed variable into string. prints string.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state|
#   states = []
#   state = VirusPredictor.new(state.to_s, :population_density, :population)
#   states << state
#   # state.virus_effects
#   p state
#   end

STATE_DATA.each do |state, category|
  states = VirusPredictor.new(state.to_s, category[:population_density], category[:population])
  states.virus_effects

  end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# alaska = VirusPredictor.new("Alaska", 104.5, 60000)
# alaska.virus_effects

# p alaska
#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
# If it's a hash in a hash, the second hash is set with a =>. the first hash is set with = {}.
What does require_relative do? How is it different from require?
# require_relative requires a local file from the related folder. require is less restrictive for access.
What are some ways to iterate through a hash?
# use .each method. You can get the value by using hash[keyname]
When refactoring virus_effects, what stood out to you about the variables, if anything?
# the parameters are unnecessary because we only need the instance variables.
What concept did you most solidify in this challenge?
# you can a call value in a loop by calling the hash with the key name. 
=end