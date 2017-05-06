require_relative 'word_game'

describe Word_Game do
  let(:word) {Word_Game.new("challenge")}

it "prints underscores according to the length of the word" do
  expect(word.underscore("challenge")).to eq 9 
end

end
