class Gadget

  attr_writer :password
  attr_reader :production_number
  attr_accessor :username
#initialize is private method
def initialize(username,password)
  @username = username
  @password = password
  @production_number = generate_production_number
end

def to_s
  "Gadget #{@production_number} has the username #{@username}
  It is made from the #{self.class} class and it has
  the ID#{self.object_id}"
  end

def generate_production_number
  start_digit = rand(10000..99999)
  end_digit = rand(10000..99999)
  alphabet= ("A".."Z").to_a
  middle_digits = "2007"
  5.times{middle_digits << alphabet.sample}
  "#{start_digit}-#{middle_digits}-#{end_digit}"
end

end


phone = Gadget.new("user","password")
p phone.production_number
