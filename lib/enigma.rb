require 'pry'
require 'date'
require './lib/rotor'
require './lib/encrypt'

class Enigma


  def encrypt(message)
    to_b_coded = message.split(//)
    e = Enigma.new
    s = e.find_shift_values
    spun = e.shift_rotor_and_gen_hash(s)
    print to_b_coded
    print spun
  end


  def find_shift_values
    shifts = Encrypt.new.rotation_generator
  end

  def generate_rotor
    rotor = Rotor.new
  end

  def shift_rotor_and_gen_hash(shifts)
    rotor_1 = Enigma.new.generate_rotor
    # rotor_2 = Enigma.new.generate_rotor
    # rotor_3 = Enigma.new.generate_rotor
    # rotor_4 = Enigma.new.generate_rotor
    shifted_1 = rotor_1.alpha.rotate(shifts[0])
    # shifted_2 = rotor_2.alpha.rotate(shifts[1])
    # shifted_3 = rotor_3.alpha.rotate(shifts[2])
    # shifted_4 = rotor_4.alpha.rotate(shifts[3])
    # p shifted_1
    # p shifted_2
    # p shifted_3
    # p shifted_4
    rotor_key_1 = rotor_1.alpha.zip(shifted_1).to_h
    # rotor_key_2 = rotor_2.alpha.zip(shifted_2).to_h
    # rotor_key_3 = rotor_3.alpha.zip(shifted_3).to_h
    # rotor_key_4 = rotor_4.alpha.zip(shifted_4).to_h

    # p rotor_key_1
    # p rotor_key_2
    # p rotor_key_3
    # p rotor_key_4

  end


  def receive_and_split(string)
    message = string
    message_array = message.split(//)
  end

  def substitute_letters

  end

end

e = Enigma.new
message = "Hello"
encoded = e.encrypt(message)
p encoded
