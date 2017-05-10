# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# "require_relative" connects this file to the state_data.rb file. The file we load using "require_relative" is relative (and in the same directory) and therefore does not require specification of the extension or entire filepath.


require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population_density, :population
#Initializing the method and variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Calling other methods within the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #'private' prevents the methods below from being able to be called. i.e. blocking them and making them private.
  private

#Based on certain conditions, this method will print the geography and associated deaths in each geographical location.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Will print the speed of thedisease spread based on population density.

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


STATE_DATA.each do |state, pop|
  VirusPredictor.new(state, pop[:population_density], pop[:population]).virus_effects
end

# STATE_DATA.each do |state, pop|
#   # state.each do 
#   p state 
#   p pop[:population]
#   p pop[:population_density]
#   puts 
# end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
#This challenge provided more practice on refactoring. It also introduced nested hashes which is something we haven't worked much on yet.


