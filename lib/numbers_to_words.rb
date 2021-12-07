require('pry')

class Word
  def initialize(num)
    @num=num
    @number_words = {1 => "one", 2=>"two", 3=>"three", 4=>"four", 5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen",20=>"twenty"}
    @tens_words = {2 => "twenty" , 3=>"thirty", 4=>"fourty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninty",}
    @word_array = []
    @split_num = []
  end
  def to_word
    if @num<=20
      return @number_words.fetch(@num)
    else
      @split_num = @num.to_s.split("").reverse()
        @word_array.unshift(@number_words.fetch(@split_num[0].to_i))
        @word_array.unshift(@tens_words.fetch(@split_num[1].to_i))
    end
    @word_array.join(" ")
  end
end



