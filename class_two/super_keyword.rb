class Car

  def initialize(maker)
    @maker = maker
  end
  def drive
    "Room Room!!"
  end

end

class FireTruck < Car
  attr_reader :siren
  def initialize(maker,siren)
    super(maker)
    @siren = siren
  end
  def drive(speed)
    super() + "Beep Beep!!!.. I am going at #{speed} mph"
  end
end

ft = FireTruck.new("Toyato",4)
p ft.drive(90)
p ft.siren
