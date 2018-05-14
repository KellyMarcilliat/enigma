require 'pry'
require 'date'

class Encrypt
  attr_reader :random_array

  def initialize
    @random_array = []
  end


  #gen a random number of 5 digits storing each digit in an array
  def random_array_maker
    rand(10000..99999).digits.reverse
  end

  # gen ab, bc, cd, de combos of @random_array digits
  def key_maker(five_digit_array)
    key = []
    key << five_digit_array[0] * 10 + five_digit_array[1]
    key << five_digit_array[1] * 10 + five_digit_array[2]
    key << five_digit_array[2] * 10 + five_digit_array[3]
    key << five_digit_array[3] * 10 + five_digit_array[4]
    key
  end

  def date_maker
    date = DateTime.now
  end

  def date_array_maker(date)
    date_array = []
    date_array << date.day
    date_array << date.month
    date_array << date.year - 2000
  end
  # p date_maker
  # p date_maker[0].class

  # def offset(date_maker)
  #   date_integer = @date_array.join.to_i#**2
  #   date_squared = date_integer ** 2
  #   @offset = date_squared.digits[0..3]
  # end
  # p offset(date_maker)
  #
  #

  # def key_gen
  #   key_maker(random_array_maker)
  # end

end

# p key_maker
#
#
#
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
