# Swapping the first and last name.

puts "What is your full name?"
  full_name = gets.chomp
  
def swap(full_name)
  full_name.split(" ")
  puts "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
end

swap(full_name)


# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.


vowels = "aeiou".split("")
new_vowel = vowels.map! {|letter| letter.next}

consonants = "bcdfghjklmnpqrstvwxyz".split("")
new_consonant = consonants.map! {|letter| letter.next}

full_name_letters = full_name.split("")

if (full_name_letters.include? vowels)
  alias_vowel = new_vowel
elsif (full_name_letters.include? consonants)
  alias_consonant = new_consonant
end

puts alias_vowel
puts alias_consonant










# puts "What is your full name?"
#   full_name = gets.chomp

# def vowel_change()
