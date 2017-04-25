# Obtain data form designer/user
# Data to obtain includes name, age, number of children, decor theme, etc.
# Convert the user input into the appropriate data type (i.e. string, integer, boolean)
# Print the user input back into the screen once all questions have been answered.
# Give the user the opportunity to update a key. If the designer says "none", skip it. But if the designer enters something, ask for a new value.
# Print the final version of the user input.
# Exit the program

puts "Please provide the following requested data."

puts "Name"
name = gets.chomp

puts "Age"
age = gets.chomp.to_i

puts "Number of children"
children = gets.chomp.to_i

puts "Decor theme"
decor = gets.chomp

puts "Customer income ($)"
income = gets.chomp.to_i

puts "Can afford full redesign? (y/n)"
afford = gets.chomp


customer_data = {
  name: name,
  age: age,
  children: children,
  decor: decor,
  income: income,
  afford: afford
}

p customer_data

puts "Do you need to make any corrections to your data? Please enter 'name', 'age', 'children', 'decor', 'income', 'afford', or 'none'."

response = customer_data[gets.chomp.to_sym]

case response 
  
when response == "none"
  puts "No corrections made."

when response = customer_data[:name]
  puts "Change name record"
  customer_data[:name] = gets.chomp.to_sym
  p customer_data

when response = customer_data[:age]
  puts "Change age record"
  customer_data[:age] = gets.chomp.to_sym
  p customer_data

when response = customer_data[:children]
  puts "Change number of children record"
  customer_data[:children] = gets.chomp.to_sym
  p customer_data

when response = customer_data[:decor]
  puts "Change decor theme record"
  customer_data[:decor] = gets.chomp.to_sym
  p customer_data

when response = customer_data[:income]
  puts "Change income record"
  customer_data[:income] = gets.chomp.to_sym
  p customer_data

when response = customer_data[:afford]
  puts "Change afford record"
  customer_data[:afford] = gets.chomp.to_sym
  p customer_data
  
end






















