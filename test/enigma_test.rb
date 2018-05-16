require 'pry'
require 'date'
require './lib/enigma'
require "minitest/autorun"
require "minitest/pride"

class EnignmaTest < Minitest::Test

  def test_enigma_class_exists
    enigma_1 = Enigma.new
    assert_instance_of Enigma, enigma_1
  end

  def test_it_can_call_shift_values
    shifts = Encrypt.new.rotation_generator
    assert_equal 4, shifts.length
  end

  def test_can_generate_rotor
    rotor = Enigma.new.generate_rotor
    assert_equal 26, rotor.alpha.length
  end

  def test_the_rotor_can_spin
    rotor = Enigma.new.generate_rotor
    spun_rotor = rotor.alpha.rotate!(1)
    assert_equal "B", spun_rotor[0]
  end

  def test_rotor_recieves_shift_values
    shifts = Encrypt.new.rotation_generator
    rotor = Enigma.new.generate_rotor
    shifted = rotor.alpha.rotate(shifts[1])
    refute_equal "A", shifted[0]
  end

  def test_have_hash_contains_shifted_and_unshited
    e = Enigma.new
    codes = e.shift_rotor_and_gen_code
    p codes

  end

  def test_receive_message
    message = Enigma.new.receive_message_and_split("hello")
    assert_equal "h", message[0]
  end

end
