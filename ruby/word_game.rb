# CLASS Word_Game (successfully passed Rspec tests)

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
    puts "You have #{@set_word.length} guesses remaining."
  end
end


# USER VIEW
def first_guess
  puts "Please enter a letter you think will be in the word"
  guess_1 = gets.chomp

  if guess_1 == "d"
    puts "Well done. d is in the word in the following position: d__."
  elsif guess_1 == "o"
    puts "Well done. o is in the word in the following position: _o_."
  elsif guess_1 == "g"
    puts "Well done. g is in the word in the following position: __g."
  else 
    puts "Sorry. That is incorrect. You have 2 guesses remaining."
  end
end

def second_guess
  puts "Please enter a letter you think will be in the word"
  guess_2 = gets.chomp

  if guess_2 == "d"
    puts "Well done. d is in the word in the following position: d__."
  elsif guess_2 == "o"
    puts "Well done. o is in the word in the following position: _o_."
  elsif guess_2 == "g"
    puts "Well done. g is in the word in the following position: __g."
  else 
    puts "Sorry. That is incorrect. You have 1 guess remaining."
  end
end

def third_guess
  puts "Please enter a letter you think will be in the word"
  guess_3 = gets.chomp

  if guess_3 == "d"
    puts "Well done. d is in the word in the following position: d__."
  elsif guess_3 == "o"
    puts "Well done. o is in the word in the following position: _o_."
  elsif guess_3 == "g"
    puts "Well done. g is in the word in the following position: __g."
  else 
    puts "Sorry. That is incorrect. You lost!"
  end
end

def bonus_guess
  puts "Surprise! Here is a bonus guessing opportunity. There's a catch, though. You have to guess the whole word. If you are correct, you win. If you are incorrect, you lose the entire game!"
  guess_4 = gets.chomp

  if guess_4 == "dog"
    puts "Congratulations! You are a WINNER!"
  else 
    puts "Aww...You didn't win this time, but there's always next time! :)"
  end
end

# DRIVER CODE
puts "Welcome to the word-guessing game. I will set a word, and you have to guess which letters are in that word. Use lower-case letters only. Here is a HINT!: A pet said to be man's (or woman's!) best friend."
game = Word_Game.new("dog")
game.underscore("dog")
game.guessing("dog")

first_guess
second_guess
third_guess
bonus_guess
