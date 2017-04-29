# Settings for input and data storage

full_name = ""
name_storage = {}

# Method definition
# Separate input "full_name" into 2 words, first & last names.
# Then swap the first and last names
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
  def new_alias(full_name)
    full_name.split(" ")
    swapped_name = "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
    swapped_name.tr('AEIOUaeiouBCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz', 'EIOUAeiouaCDFGHJKLMNPQRSTVWXYZBcdfghjklmnpqrstvwxyzb')
  end
 
# Create until-loop with user interface asking user to submit input until entering 'quit'.  
until full_name == "quit"
  puts "Please enter a set of first and last names you wish to create an alias out of. Otherwise, enter 'quit'."

# Store all data entries into hash format

  full_name = gets.chomp
  name_storage[full_name] = new_alias(full_name)
  
  if full_name != "quit"
    puts new_alias(full_name)
  end
end

# Utilize .each do to print hash data
name_storage.each do |spyname, realname|
  puts "#{spyname} is actually #{realname}."
end







