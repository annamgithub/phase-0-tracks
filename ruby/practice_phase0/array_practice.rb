#Given the below array, display the following message using the following forms of iteration: while, until, and each

#I have a cow
#I have a dog
#I have a elephant
#I have a horse
#I have a lion

animals = ['cow', 'dog', 'elephant', 'horse', 'lion']

#___________________________________

#While
i = 0
while i < animals.length
  puts "I have a #{animals[i]}"
  i += 1
end

#Until
i = 0
until i == animals.length
  puts "I have a #{animals[i]}"
  i += 1
end

#Each
animals.each do |animal|
  puts "I have a #{animal}"
end









