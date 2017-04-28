# Release 0 

starting_array = [1, 3, 5, 7, 9]

def search_array(starting_array, value)

  counter = 0
  
  starting_array.each do |look|
    if value == look
    else  

  counter += 1

  end


  

# starting_array.include?(value)



p search_array(starting_array, 10)
p search_array(starting_array, 3)
