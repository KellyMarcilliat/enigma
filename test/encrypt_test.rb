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
end

class EncryptTest < Minitest::Test
  def test_random_array_has_five_elements
    encrypt = Encrypt.new

    assert_equal random_array_maker.length, 5
  end
end
