# Release 0 - Implement a Simple Search

#Defining the method
def search(starting_array, value)
  index = 0
  starting_array.each do |item|
    return index if item == value
    index = index + 1
  end 
  nil
end

#Example Search
numbers = [1, 3, 5, 7, 9]
v = 3
puts search(numbers, v)


# Release 1: Calculate Fibonacci Numbers

def fib(number)
  counter = 0
  fib_array = [0,1]
  fib_new = []
  until number == counter
    fib_new = fib_array[-1] + fib_array[-2]
    fib_array << fib_new
  counter = counter + 1
end  
  fib_array
end

p fib(10)


# Release 2: Sort an Array

# Bubble Sort Pseudocode -

# Compare the first two items in an array.
  # If the first item is larger than the second one, swap its place with the second item.
  # If the first item is smaller than the second one, do not switch its position.
# Move on to view the next pair in the array, which is composed of the second and third items. Compare those items. Once again:
  # If the first item is larger than the second one, swap its place with the second item.
  # If the first item is smaller than the second one, do not switch its position.
# Once all the numbers have been assessed and switched accordingly, go back to the beginning of the altered array and initiate the above process all over again.
# Only end the entire procedure when no more swaps need to take place.


def bubble_sort array
  x = array.length

  loop do
    switch_places = false

    (x-1).times do |y|
      if array[y] > array[y+1]
        array[y], array[y+1]=array[y+1], array[y]
        switch_places = true
      end
    end

    break if not switch_places
  end

  array
end

numbers = [4, 80, 332, 4, 499, 134]
p bubble_sort(numbers)







