# RELEASE 0 & 1

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Convert string into separate keys
# Set quantity (value) for each key to 1
# print the list to the console [can you use one of your other methods here?]
# output: Hash

def create_list(item_list)
  list_arr = item_list.split(' ')
  grocery_list = {}

  list_arr.each do |item|
    grocery_list[item] = 1
  end 
  grocery_list 
end 

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add the item to the list of keys in the hash, with default quantity as 1.
# output: Print the list with the addition

def add_item_to_list(grocery_list, item)
  grocery_list[item] = 1 
  grocery_list
end


# Method to remove an item from the list
# input: list, item name, and optional quantity
# steps: delete identified item from hash
# output: Print list without the deleted item

def remove_item_from_list(grocery_list, item) 
  grocery_list.delete(item)  
  grocery_list 
end 


# Method to update the quantity of an item
# input: list, item, quantity
# steps: change quantity (value) of item (key), convert string to integer
# output: list reflecting the new quantity

def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end 


# Method to print a list and make it look pretty
# input: name of the hash
# steps: print value and key
# output: printed list

def print_finished_list(grocery_list)
  puts "Here is your grocery list: "
  grocery_list.each do |item, quantity|
    puts "#{quantity} #{item}(s)" 
  end
end 


# RELEASE 2 & 3 - Testing Solution & Refactoring (covering entire document)

grocery_list = create_list("carrots apples cereal pizza")
add_item_to_list(grocery_list, "Lemonade") 
add_item_to_list(grocery_list, "Tomatoes")
add_item_to_list(grocery_list, "Onions")
add_item_to_list(grocery_list, "Ice Cream")
update_quantity(grocery_list, "Lemonade", 2)
update_quantity(grocery_list, "Tomatoes", 3)
update_quantity(grocery_list, "Ice Cream", 4)

remove_item_from_list(grocery_list, item) 
update_quantity(grocery_list, "Ice Cream", 1)

p grocery_list


# RELEASE 4 - Reflect
# Pseudocode was useful for laying out all the intentions steps of my code in the form of an initial blueprint without having to conform to the ruby syntax.
# Using just an array would have been attractive due the greater simplicity compared to a hash, but an array would not have structured the data as I would have liked in this exercise to include both a key and a value.
# A method returns values. 
# You can pass various objects into methods as arguments including strings, integers, arrays, hashes, etc.
# You can pass information between methods by assigning it to a variable and using the variable in other methods.
# This was a good exercise for practising hashes and passing information across different methods. This is still new to me so I will need further practice to solidify these skills.















