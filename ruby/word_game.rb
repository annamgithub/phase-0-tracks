class Word_Game
  attr_accessor :set_word

# Initialize the game. In this section, have the word_setter set the word. 
# Set the number of guesses to the number of letters in the word.

  def initialize(set_word)
    @set_word = set_word 
  end

# Print underscores to be seen by the word_guesser. The number of underscores should match the letter length of the word_setter’s word.

  def underscore(set_word)
    @set_word.length.times do |x|
      print "_ "
    end
  end

  def guessing(set_word)
    @set_word.length
  end

# If it is included, print the set of underscores but replace the underscores representing the place of the correctly guessed letter.

  def inclusion(letter)
    @set_word.include?(letter)
  end

end


# Driver Code
# game = Word_Game.new("challenge")
# game.underscore("challenge")
# puts "You have #{@set_word.length} guesses remaining."

# Inclusion
    # puts "Please enter a letter you think might be in the word."
    # letter = gets.chomp

    # num_guesses -= 1

    # If it is not included, tell the user that she is incorrect and set counter to 1 less that previous guess count. 
# Continue with process until guess counter reaches zero or until all the underscores are replaced with letters. 

# Congratulate user if underscores are all replaced by letters.
# If counter reaches zero, print a taunting message to the user.
