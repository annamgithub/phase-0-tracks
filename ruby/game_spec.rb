require_relative 'word_game'

  describe Word_Game do
    let(:word) {Word_Game.new("dog")}

  it "prints underscores according to the length of the word" do
    expect(word.underscore("dog")).to eq 3 
  end

  it "sets number of guesses to the length of the word" do
    expect(word.guessing("dog")).to eq 3
  end

end
