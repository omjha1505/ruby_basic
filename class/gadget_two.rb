class GadgetTwo

  #shortcut for getter and setter
  attr_reader   :production_number , :username
  attr_writer   :password , :username

  def initialize(username,password)
    @username = username
    @password = password
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

end

phone = GadgetTwo.new("OmJha","topsecret")
p phone.to_s
p phone.username
p phone.production_number
phone.username = "omjha"
p phone.username
