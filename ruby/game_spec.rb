require_relative 'word_game'

  describe Word_Game do
    let(:word) {Word_Game.new("dog")}

  it "sets the word for the guessing game" do
    expect(word.set_word).to eq "dog" 
  end

  it "sets number of guesses allowed" do
    expect(word.guesses_allowed).to eq 6 
  end

  it "sets guesses remaining" do
    expect(word.guesses_remaining).to eq 5 
  end

  it "conceal the letters" do
    expect(word.conceal).to eq "***" 
  end

  it "collect input" do
    expect(word.input).to eq "d" 
  end

  it "put user input into letters inputted array" do
    expect(word.incorrect).to eq "e" 
  end

end
