require('rspec')
require('numbers_to_words')

describe('Word#to_word') do
word_1 = Word.new(1)
word_2 = Word.new(18)
word_3 = Word.new(25)
word_4 = Word.new(66)
  it("returns one when 1 is entered") do
    expect(word_1.to_word).to(eq("one"))
  end
  it("returns eighteen when 18 is entered") do
    expect(word_2.to_word).to(eq("eighteen"))
  end
  it("returns twentyfive when 25 is entered") do
    expect(word_3.to_word).to(eq("twenty five"))
  end
  it("returns sixty six when 66 is entered") do
    expect(word_4.to_word).to(eq("sixty six"))
  end
end


