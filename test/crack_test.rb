require 'simplecov'
SimpleCov.start
require 'pry'
require "minitest/autorun"
require "minitest/pride"
require './lib/crack'

class CrackTest < Minitest::Test
  def test_crack_instance_exists
    crack = Crack.new

    assert_instance_of Crack, crack
  end
end
