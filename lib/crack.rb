require 'pry'

class Crack
  def initialize
  end

# pull last 7 characters of message
  def last_seven_characters(message)
    last_seven_array = []
    last_seven_array = message.split("")[-7..-1]
  end

  # calculate reverse offset from date
  def reverse_date_offset(date)
    date_integer = date.to_i
    date_squared = date_integer ** 2
    date_offset = date_squared.digits[0..3].reverse
  end

  def integer_to_array(five_digit_integer)
    five_digit_array = five_digit_integer.digits.reverse
  end

  def sequence(array)
    key = []
    key << array[0] * 10 + array[1]
    key << array[1] * 10 + array[2]
    key << array[2] * 10 + array[3]
    key << array[3] * 10 + array[4]
    key
  end

# rotate message_array characters backwards per offsets
  # adjusted_message = message_array.backward_offset
  # adjusted_message  adjusted_array
# does adjusted message == "..end.."
  #
  # check adjusted_array against [00, 00, 00, 00]
    # do converter below on 10000 to 99999 sequentially until output (in form of [ww, xx, yy, zz]) run backwards on message gives result of one of the following:
      # ["..end..", ".end...", "end....", "nd....e", "d....en", "....end", "...end."]
      # if [0], key sequence is [2, 3, 4, 1, 2, 3, 4]
      # if [1], key sequence is [3, 4, 1, 2, 3, 4, 1]
      # if [2], key sequence is [4, 1, 2, 3, 4, 1, 2]
      # if [3], key sequence is [1, 2, 3, 4, 1, 2, 3]
  # convert 10,000 to [01, 12, 23, 34]
    # def converter
      # key = []
      # key << five_digit_array[0] * 10 + five_digit_array[1]
      # key << five_digit_array[1] * 10 + five_digit_array[2]
      # key << five_digit_array[2] * 10 + five_digit_array[3]
      # key << five_digit_array[3] * 10 + five_digit_array[4]
      # key
    # end
  # run adjusted_array backwards that amount (Pat's code)
  # if result is not "..end.."
# convert 10,001 to
end

## Idea:  if rotating backwards doesn't work, rotate forward (on the 10,000 and up thing)
