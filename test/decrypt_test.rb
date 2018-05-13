require 'simplecov'
SimpleCov.start
require 'pry'
require "minitest/autorun"
require "minitest/pride"
require './lib/decrypt'

class DecryptTest < Minitest::Test
  def test_decrypt_instance_exists
    decrypt = Decrypt.new

    assert_instance_of Decrypt, decrypt
  end
end
