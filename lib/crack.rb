require 'pry'

class Crack
  def initialize
  end



#CRACKING A KEY
#When the key is not known, the offsets can still be calculated from the message date. We believe that each enemy message ends with the characters "..end..". Use that to determine when you’ve correctly guessed the key.

# "..end.." Ends every message
# pull last 7 characters of message
  # message_array = string.reverse.split
  # ending_array = message_array[0..6]
    # this is what will be evaluated
# calculate offsets from date
  # given_date ** 2
  # last 4 digits
# rotate message_array characters backwards per offsets
  # adjusted_array = message_array.backward_offset
# convert 10,000 to [01, 12, 23, 34]
# run that through rotator
# if result is not "..end.."
# convert 10,001 to

## Idea:  if rotating forward doesn't work, rotate backwards (on the 10,000 and up thing)

end 
