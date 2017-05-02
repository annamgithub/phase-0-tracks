class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender


  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end
  
  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
  end
  
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(naughty_reindeer)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @reindeer_ranking.delete(naughty_reindeer)
    @reindeer_ranking << naughty_reindeer
    p @reindeer_ranking
    end
end

# #Setter Method
#   def gender=(gender)
#     @gender = gender
#   end

# #Getter Method
#   def age
#     @age
#   end

#   def ethnicity
#     @ethnicity
#   end



#__________________________________________

# *** Driver Code ***

# santas = []
gender = ["male", "female", "other"]
ethnicity = ["Black", "White", "Asian", "Latino", "Mixed", "Other"]

# gender.length.times do |i|
# ethnicity.length.times do |x|  
# santas << Santa.new(gender[i], ethnicity[x])

# santa = Santa.new(gender[i], ethnicity[x])
# santa.speak
# santa.eat_milk_and_cookies("Oreo")
# santa.about
# santa = Santa.new("female", "Mixed")
# santa.celebrate_birthday

# @reindeer_ranking
# santa.get_mad_at("Vixen")
# @reindeer_ranking

# end
# end

300.times do |santa|
  age = rand(0...140)
  santa_gender = gender.sample
  santa_ethnicity = ethnicity.sample
  p "Santa's age: #{age}. Santa's gender: #{santa_gender}. Santa's ethnicity: #{santa_ethnicity}"
end










