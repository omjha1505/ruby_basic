class Gadget

  #Instance varialble declaration
  #Initialize is like constructor which immideatly instantiated when Object of the class is created
  def initialize
    @username ="User #{rand(1..100)}"
    @password = "secret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..100)}"
  end

  #Instance methods
  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  #method overriding
  def to_s
    "overriding to_s method.Gadget #{@production_number} has the username #{@username}, It is made from the #{self.class}"
  end

  #getter methods
  def username
    @username
  end

  def production_number
    @production_number
  end

  #setter methods
  def password=(password)
    @password = password
  end

  def username=(user)
    @username = user
  end

end

phone = Gadget.new
phone.password=("SECRET")
phone.username=("OMJHA")
laptop = Gadget.new
#
# puts phone.is_a?(Gadget)
# puts laptop.is_a?(Gadget)

# puts phone.respond_to?(:class)
# puts phone.respond_to?(:length)
# puts phone.object_id
# puts laptop.object_id


puts phone.info
puts phone.methods - Object.methods
puts phone.to_s
puts phone.username
puts phone.production_number
puts phone.username
