class Rotor
  attr_reader :alpha,
              :rotation


  def initialize
    @alpha = ("A".."Z").to_a
  end

end

rotor_1 = Rotor.new
rotor_2 = Rotor.new
