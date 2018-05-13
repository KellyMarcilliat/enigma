require 'simplecov'
SimpleCov.start
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/encrypt'
require './lib/decrypt'
require './lib/crack'

class EnigmaTest < Minitest::Test
  def test_enigma_instance_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end
end
