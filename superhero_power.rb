module Superpower
  def check_possesed_power(power_name)

    if(power_name == @power)
      "Can #{power_name}"
    else
      "Cant #{power_name}"
    end

  end
end

class Superhero
  include Superpower
  def initialize(power)

    @power=power

  end
end

flash = Superhero.new("run")
flash.check_possesed_power("run")

spiderman= Superhero.new("fly")
spiderman.check_possesed_power("fly")

shaktiman = Superhero.new("run")
shaktiman.check_possesed_power("jump")



