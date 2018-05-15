require 'simplecov'
SimpleCov.start
require 'pry'
require "minitest/autorun"
require "minitest/pride"
require './lib/encrypt'
require 'date'

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

  def test_date_maker_gives_today_date_string
    encrypt = Encrypt.new
    assert Date.today
  end

  def test_offset_produces_array_last_four_digits_of_date_squared
    encrypt = Encrypt.new
    date = Date.today.strftime("%d%m%y")
    assert_equal [8, 3, 2, 4], encrypt.offset(date)
  end

  def test_shift_produces_array_of_keymaker_plus_offset
    encrypt = Encrypt.new

    assert_equal [25, 75, 31, 95], encrypt.shift([17, 72, 29, 91], [8, 3, 2, 4])
  end
end
