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

# rotate message_array characters backwards per offsets
  # adjusted_message = message_array.backward_offset
  # adjusted_message  adjusted_array
# does adjusted message == "..end.."
  #
  # check adjusted_array against [00, 00, 00, 00]
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
