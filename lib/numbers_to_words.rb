require('pry')

class Word
  def initialize(num)
    @num=num
    @number_words = {1 => "one"}
  end
  def to_word
    @number_words.fetch(1)
  end
end




