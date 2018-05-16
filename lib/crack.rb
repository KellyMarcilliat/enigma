require 'pry'
require './lib/key_generation'

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

  # separate 5 digit integer into array by digit in same order
  def integer_to_array(five_digit_integer)
    five_digit_array = five_digit_integer.digits.reverse
  end

  def sequencer
    # calls key_maker and generates keys
    integer = 10000
    while integer <= 99999
      five_digit_array = []
      five_digit_array = integer.integer_to_array
      key = five_digit_array.key_maker
      # call rotator on key to produce array of characters
      # reverse the array
      # pull the final four characters
      # compare against "nd.." and iterates of same
    end
    key
  end

# rotate message_array characters backwards per offsets
  # adjusted_message = message_array.backward_offset
  # adjusted_message  adjusted_array
# does adjusted message == "..end.."
  #
  # check adjusted_array against [00, 00, 00, 00]
    # do converter below on 10000 to 99999 sequentially until output (in form of [ww, xx, yy, zz]) run backwards on message gives result of one of the following:
      # ["..end.."]
      # if [0], key sequence is [2, 3, 4, 1, 2, 3, 4]
      # if [1], key sequence is [3, 4, 1, 2, 3, 4, 1]
      # if [2], key sequence is [4, 1, 2, 3, 4, 1, 2]
      # if [3], key sequence is [1, 2, 3, 4, 1, 2, 3]
  # run adjusted_array backwards that amount (Pat's code)
  # if result is not "..end.."
end

## Idea:  if rotating backwards doesn't work, rotate forward (on the 10,000 and up thing)
