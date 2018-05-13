require 'pry'
require 'date'

class Encrypt
  def initialize
  end
end

#gen a random number of 5 digits storing each digit in an array
@random_array = []
def random_array_maker
  @random_array = rand(1000..99999).digits.reverse
end
p random_array_maker
#
# # gen ab, bc, cd, de combos of @random_array digits
# def key_maker
#   @key = []
#   @key << @random_array[0] * 10 + @random_array[1]
#   @key << @random_array[1] * 10 + @random_array[2]
#   @key << @random_array[2] * 10 + @random_array[3]
#   @key << @random_array[3] * 10 + @random_array[4]
# end
# p key_maker
#
# #def create_offset
# def date_maker
#   date = DateTime.now
#   p date
#
#   @date_array = []
#   @date_array << date.month
#   @date_array << date.day
#   @date_array << date.year - 2000
#   #date_array
# end
# p @date_maker
#
# def offset(date_maker)
#   date_integer = @date_array.join.to_i#**2
#   date_squared = date_integer ** 2
#   @offset = date_squared.digits[0..3]
# end
# p offset(date_maker)
#
# def shift
#   @shift_array = []
#   @shift_array << @key[0] + @offset[0]
#   @shift_array << @key[1] + @offset[1]
#   @shift_array << @key[2] + @offset[2]
#   @shift_array << @key[3] + @offset[3]
#   # p shift_array
# end
# p shift
#
# def effective_shift
#   @effective_shift = []
#   @effective_shift << @shift_array[0] %39
#   @effective_shift << @shift_array[1] %39
#   @effective_shift << @shift_array[2] %39
#   @effective_shift << @shift_array[3] %39
# end
# p effective_shift
