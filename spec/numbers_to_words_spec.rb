require('rspec')
require('numbers_to_words')

describe('Word#in_words') do
  it("returns eight when 8 is entered") do
    expect(Word.in_words(8)).to(eq("eight"))
  end
  it("returns eight when 8 is entered") do
    expect(Word.in_words(8455009)).to(eq("eight million four hundred fifty five thousand nine"))
  end
end


