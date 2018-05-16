require 'simplecov'
SimpleCov.start
require 'pry'
require 'date'
require "minitest/autorun"
require "minitest/pride"
require './lib/crack'

class CrackTest < Minitest::Test
  def test_crack_instance_exists
    crack = Crack.new
    assert_instance_of Crack, crack
  end

  def test_last_seven_characters_arrays_last_7_char
    crack = Crack.new
    assert_equal [".", ".", "e", "n", "d", ".", "."], crack.last_seven_characters("amazing message ..end..")
  end

  def test_reverse_date_offset_arrays_last_4_digits
    crack = Crack.new
    assert_equal [8, 3, 2, 4], crack.reverse_date_offset("150518")
  end
end
