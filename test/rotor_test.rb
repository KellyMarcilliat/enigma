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
  def test_rotation
    rotor_1 = Rotor.new
    array = rotor_1.alpha.rotate(5)
    assert_equal array[0], "F"
  end
  def test_rotation_past_z
    rotor_1 = Rotor.new
    array = rotor_1.alpha.rotate(27)
    assert_equal array[0], "B"
  end
end
