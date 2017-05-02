class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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

  def get_mad_at(name)
    reindeer_ranking[name].delete
    reindeer_ranking[-1].push
  end
  
  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
  end
  
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    i = 0
    while naughty_reindeer != @reindeer_ranking[i]
      if naughty_reindeer == @reindeer_ranking[i]
        naughty_reindeer = @reindeer_ranking.delete[i]
        @reindeer_ranking << naughty_reindeer
      end
      i += 1
    end
  end
end

#Setter Method
  def gender=(gender)
    @gender = gender
  end

#Getter Method
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
  
# Driver Code

santas = []
gender = ["male", "female", "other"]
ethnicity = ["Black", "White", "Asian", "Latino", "Mixed", "Other"]

gender.length.times do |i|
ethnicity.length.times do |x|  
# santas << Santa.new(gender[i], ethnicity[x])

santa = Santa.new(gender[i], ethnicity[x])
santa.speak
santa.eat_milk_and_cookies("Oreo")
santa.about

end
end











