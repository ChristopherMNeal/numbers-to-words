require('pry')

# class Word
#   def initialize(num)
#     @num=num
#     @number_words = {1 => "one", 2=>"two", 3=>"three", 4=>"four", 5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen",20=>"twenty"}
#     @tens_words = {2 => "twenty" , 3=>"thirty", 4=>"fourty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninty",}
#     @word_array = []
#     @split_num = []
#   end
#   def to_word
#     if @num<=20
#       return @number_words.fetch(@num)
#     else
#       @split_num = @num.to_s.split("").reverse()
#         @word_array.unshift(@number_words.fetch(@split_num[0].to_i))
#         @word_array.unshift(@tens_words.fetch(@split_num[1].to_i))
#     end
#     @word_array.join(" ")
#   end
# end



class Word
  def self.in_words(int)
    numbers_to_name = {
        1000000000000 => "trillion",
        1000000000 => "billion",
        1000000 => "million",
        1000 => "thousand",
        100 => "hundred",
        90 => "ninety",
        80 => "eighty",
        70 => "seventy",
        60 => "sixty",
        50 => "fifty",
        40 => "forty",
        30 => "thirty",
        20 => "twenty",
        19=>"nineteen",
        18=>"eighteen",
        17=>"seventeen", 
        16=>"sixteen",
        15=>"fifteen",
        14=>"fourteen",
        13=>"thirteen",              
        12=>"twelve",
        11 => "eleven",
        10 => "ten",
        9 => "nine",
        8 => "eight",
        7 => "seven",
        6 => "six",
        5 => "five",
        4 => "four",
        3 => "three",
        2 => "two",
        1 => "one"
      }
    str = ""
    numbers_to_name.keys().each do |num|
      if int == 0
        return str
      elsif int.to_s.length == 1 && int/num > 0
        return str + numbers_to_name.fetch(num) + " "
      elsif int < 100 && int/num > 0
        return str + numbers_to_name.fetch(num)+ " "       if int%num == 0
        return str + numbers_to_name.fetch(num) +" " + in_words(int%num)
      elsif int/num > 0
        return str + in_words(int/num) + numbers_to_name.fetch(num)+ " " + in_words(int%num)
      end
    end

  end
end



# @split_num = @num.to_s.split("").reverse()
#       if @split_num[1] == "1" # split_num == [8,1,1] 
#         @split_num[0].to_i += 10 # split_num == [18,1,1] 
#         @split_num[1] = 0 # split_num == [18,0,1] 
#       end
#           @word_array.unshift(@number_words.fetch(@num))
#           @word_array.unshift(@number_words.fetch(@split_num[0].to_i))
#           @word_array.unshift(@tens_words.fetch(@split_num[1].to_i))