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
