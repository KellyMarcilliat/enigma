class Rotor
  attr_reader :alpha,


  def generate
    @alpha = ("A".."Z").to_a
  end
end

rotor_1 = Rotor.new


p rotor_1.generate
