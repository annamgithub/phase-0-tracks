# Hamster's name
puts "What is the hamster's name?"
name = gets.chomp

# Volume tolerance level
puts "What is your volume tolerance level? (1 = lowest volume, 10 = highest volume)"
volume = gets.chomp
volume = volume.to_i

until volume >= 1 && volume <= 10
  puts "What is your volume tolerance level? (1 = lowest volume, 10 = highest volume)"
  volume = gets.chomp
  volume = volume.to_i
end

# Fur color
puts "What color is the hamster's fur?"
furcolor = gets.chomp

# Adoption candidacy
puts "Is the hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp

until adoption == "y" || adoption == "n"
  puts "Is the hamster a good candidate for adoption? (y/n)"
  adoption = gets.chomp
end

# Hamster's approximate age
puts "What is the hamster's approximate age?"
age = gets.chomp
age = age.to_i
  
if age == ""
  age = nil
end

# Printing input results
puts "Your hamster's name is #{name}."
puts "Your voume tolerance level is #{volume}."
puts "#{name}'s fur color is #{furcolor}."
puts "Adoption approval status: #{adoption}"
puts "#{name}'s approximate age is #{age}"