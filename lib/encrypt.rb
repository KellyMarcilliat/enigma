require 'pry'
require 'date'

class Encrypt
  # attr_reader :random_array

  def initialize
    # @random_array = []
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
    date = Date.today.strftime("%d%m%y")
  end

  def offset(date)
    date = Date.today.strftime("%d%m%y")
    date_squared = date.to_i ** 2
    date_last_four = date_squared.digits[0..3].reverse
    date_last_four
  end

  def shift(key_array, offset_array)
    shift_array = []
    shift_array << key_array[0] + offset_array[0]
    shift_array << key_array[1] + offset_array[1]
    shift_array << key_array[2] + offset_array[2]
    shift_array << key_array[3] + offset_array[3]
    # p shift_array
  end

  def rotation_generator
    random_array = random_array_maker
    key_array = key_maker(random_array)
    date_string = date_maker
    offset_array = offset(date_string)
    shift_array = shift(key_array, offset_array)
  end
  # p Encrypt.new.rotation_generator
end
