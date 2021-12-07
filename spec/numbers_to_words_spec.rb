require('rspec')
require('numbers_to_words')

describe('Word#to_word') do
word_1 = Word.new(1)
  it("returns one when 1 is entered") do
    expect(word_1.to_word).to(eq("one"))
  end
end


