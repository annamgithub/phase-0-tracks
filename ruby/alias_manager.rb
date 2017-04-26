# Swapping the first and last name.

puts "What is your full name?"
  full_name = gets.chomp
  
def swap(full_name)
  full_name.split(" ")
  puts "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
end

swap(full_name)


# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

vowel_array = vowels.split("")
consonants.split("")

vowels.each do |nextvowel|
  nextvowel = vowel_array.next
end

p nextvowel




puts "What is your full name?"
  full_name = gets.chomp

def vowel_change()
