# Release 0, Step 1. Swap first and last names

puts "What is your full name?"
  full_name = gets.chomp
  
def swap(full_name)
  full_name.split(" ")
  swapped_name = "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
  puts swapped_name.tr('AEIOUaeiouBCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz', 'EIOUAeiouaCDFGHJKLMNPQRSTVWXYZBcdfghjklmnpqrstvwxyzb')
end

puts swap(full_name)


# Swapping first and last names given by: 
# "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"


# Release 0, Step 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

