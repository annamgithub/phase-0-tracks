class Word_Game
  attr_writer :set_word

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

# Ensure that in driver code the guessers guesses are inputted. Check whether guessed letter is within word_setter’s word. (.include?)

  # def guessing(set_word)
  #   i = @num_guesses

  # end

# If it is included, print the set of underscores but replace the underscores representing the place of the correctly guessed letter.
# If it is not included, tell the user that she is incorrect and set counter to 1 less that previous guess count. 
# Continue with process until guess counter reaches zero or until all the underscores are replaced with letters. 
# Congratulate user if underscores are all replaced by letters.
# If counter reaches zero, print a taunting message to the user.
end


# Driver Code
game = Word_Game.new("challenge")
game.underscore("challenge")
