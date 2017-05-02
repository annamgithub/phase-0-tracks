  class Santa

@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
@age = 0

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
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

  def get_mad_at(name)
    reindeer_ranking[name].delete
    reindeer_ranking[-1].push
end

#Setter Method
  def gender
    @gender
  end

#Getter Method
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
  


# Driver Code

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Oreo")

# santas = []
# gender = ["male", "female", "other"]
# ethnicity = ["white", "black", "East Asian", "South Asian", "Latino", "Mixed", "Other"]
# gender.length.times do |i|
# santas << Santa.new(gender[i], ethnicity[i])
# end










