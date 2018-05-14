require 'simplecov'
SimpleCov.start
require 'pry'
require "minitest/autorun"
require "minitest/pride"
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def test_encrypt_instance_exists
    encrypt = Encrypt.new

    assert_instance_of Encrypt, encrypt
  end

  def test_random_array_maker_gives_five_digits
    encrypt = Encrypt.new

    assert_equal 5, encrypt.random_array_maker.length
  end

  def test_key_maker_changes_five_single_digits_to_four_double_digits
    encrypt = Encrypt.new
    assert_equal [17, 72, 29, 91], encrypt.key_maker([1, 7, 2, 9, 1])
  end

  def test_date_maker_gives_date_and_time
    encrypt = Encrypt.new
    assert DateTime.now
  end

  # def test_date_array_maker_produces_array_of_day_month_year
  #
  # end


# class EncryptTest < Minitest::Test
#   def test_date_array_has_3_elements
#     encrypt = Encrypt.new
#
#     assert_equal date_maker.length, 3
#   end
# end


end

# class EncryptTest < Minitest::Test
#   def test_offset_
