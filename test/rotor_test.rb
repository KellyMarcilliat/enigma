require "minitest/autorun"
require "minitest/pride"
require "./lib/rotor"

class RotorTest < Minitest::Test

  def test_exists
  rotor = Rotor.new
  assert_instance_of Rotor, rotor
  end

  def test_multiple_rotors
    rotor_1 = Rotor.new
    rotor_2 = Rotor.new
    assert_instance_of Rotor, rotor_1
    assert_instance_of Rotor, rotor_2
  end

  def test_the_rotors_are_different
    rotor_1 = Rotor.new
    rotor_2 = Rotor.new
    refute rotor_1 == rotor_2
  end

end
