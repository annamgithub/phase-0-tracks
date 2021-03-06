# Array Drills

zombie = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array, printing each item in the array separated by an asterisk.

zombie.each {|x| print "#{x}*"}

# ----

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

def alpha(array)
  n = array.length

  loop do
    swap = false

    (n-1).times do |index|
      if array[index] > array[index+1]
        array[index], array[index+1]=array[index+1], array[index]
        swap = true

      end
    end
    break if not swap
  end
  array
end

zombie = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]
p alpha(zombie)


# ----

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def search(starting_array, value)
  index = 0
  starting_array.each do |item|
    return index if item == value
    index = index + 1
  end 
  nil
end

search(zombie, "boots")
search(zombie, "rations")


# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

zombie - ["hatchet", "rations", "water jug"]


# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

zombie = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

combined = other_survivor_supplies | zombie

puts combined


# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

extinct_animals.each {|animal, date| puts "#{animal}-#{date}*"}

# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

extinct_animals.keep_if {|animal, date| date < 2000} 

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

extinct_animals.each {|animal, date| p animal, date-3}


# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

extinct_animals.include?("Andean Cat")
extinct_animals.include?("Dodo")
extinct_animals.include?("Saiga Antelope")



# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.


extinct_animals.delete("Passenger Pigeon")
puts extinct_animals

extinct_animals.keep_if {|animal, date| animal == "Passenger Pigeon"}
extinct_animals.to_a





# ----
