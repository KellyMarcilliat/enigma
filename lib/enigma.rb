require 'pry'
require 'date'
require './lib/rotor'
require './lib/encrypt'

class Enigma


  def encrypt(message)
    to_b_coded = message.upcase.split(//)
    e = Enigma.new
    s = e.find_shift_values
    spun_1 = e.shift_rotor_and_gen_hash(s[0])
    spun_2 = e.shift_rotor_and_gen_hash(s[1])
    spun_3 = e.shift_rotor_and_gen_hash(s[2])
    spun_4 = e.shift_rotor_and_gen_hash(s[3])
    letter_1 = spun_1.fetch_values(to_b_coded[0])
    letter_2 = spun_2.fetch_values(to_b_coded[1])
    letter_3 = spun_3.fetch_values(to_b_coded[2])
    letter_4 = spun_4.fetch_values(to_b_coded[3])

    # translation = to_b_coded.each_with_index do |char, index|
    #   if index == 0;
    #     spun_1.fetch_values(char)
    #   elsif index == 1;
    #     spun_2.fetch_values(char)
    #   elsif index == 2;
    #     spun_3.fetch_values(char)
    #   elsif index == 3;
    #     spun_4.fetch_values(char)
    #   end

    # end



    # p s
    # p spun_1
    # p spun_2
    # p spun_3
    # p spun_4
    p letter_1
    p letter_2
    p letter_3
    p letter_4


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
    shifted_1 = rotor_1.alpha.rotate(shifts)
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
message = "pats"
encoded = e.encrypt(message)
p encoded
