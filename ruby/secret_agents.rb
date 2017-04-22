# Part 1, "Encrypt". Pseudocode in comment form:
# Objective: An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.


# Define the method, "encrypt" which involves an input-string.

def encrypt(input_string)

# Set index counter to start at zero.

  index = 0

# Introduce a variable that represents the output-string we are creating. 

  output_string = ""


# Create a loop in which the output-string is yielded from an input-string by the intended operation as long as there are still more letters to be covered.

  while index < input_string.length
    output_string = output_string + input_string[index].next!
    index += 1
  end

# Print the output-string

  puts output_string
 end



# Part 2, "Decrypt". Pseudocode in comment form:
#Objective: A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

# Define the method, "decrypt" which involves an input-string.

def decrypt(input_string)

# Set index counter to zero.

  index = 0

# Introduce a variable that represents the output-string we are creating.

  output_string = "" 

# With no built-in method to go backward one letter, we take a different approach that involves creating a new variable covering the entire alphabet.
  
  alpha = "abcdefghijklmnopqrstuvwxyz"

# Create a loop in which the output-string is yielded from an input-string by the intended operation as long as there are still more letters to be covered. However, this time we have to have the operation work backwards along the alphabet.

  while index < input_string.length
    alpha_letter = alpha.index(input_string[index])
    output_string = output_string + alpha[alpha_letter - 1]
    index += 1
  end

# Print the output-string

   puts output_string
 end


# Regarding decrypt(encrypt("swordfish")) :
# In theory, I understand why calling this nested method call should work. The inner part "encrypt("swordfish")" should yiled a string which should also be valid as a "decrypt" call. I am still receiving an error message, however, despite the fact that all of my code works with the rest of the tests in Release 3.


# Release 5: Interface

puts "Would you like to decrypt or encrypt a password? (decrypt/encrypt)"
  question = gets.chomp

puts "What is the password?"
  input_string = gets.chomp
  
if question == "encrypt"
  puts encrypt(input_string)
elsif question == "decrypt"
  puts decrypt(input_string)
end
  
  
  
  




