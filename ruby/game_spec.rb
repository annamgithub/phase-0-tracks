require_relative 'word_game'

describe Word_Game do
  let(:word) {Word_Game.new("challenge")}

it "prints underscores according to the length of the word" do
  expect(word.underscore("challenge")).to eq 9 
end

it "sets number of guesses to the length of the word" do
  expect(word.guessing("challenge")).to eq 9
end

it "checks if inputted letter is included in set word" do
  expect(word.inclusion("c")).to eq true
end




end
