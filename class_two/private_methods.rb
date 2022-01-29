require "./structs/structs_explain.rb"
class Gadget

  attr_writer :password
  attr_reader :production_number , :apps
  attr_accessor :username
#initialize is private method
def initialize(username,password)
  @username = username
  @password = password
  @production_number = generate_production_number
  @apps = []
end

def to_s
  "Gadget #{production_number} has the username #{username}
  It is made from the #{self.class} class and it has
  the ID#{object_id}"
  end

def install_app(name)
  app = AppStore.find_app(name)
  @apps << app unless @apps.include?(app)
end

def delete_app(name)
  app = apps.find {|installed_app| install_app.name == name}
  apps.delete(app) unless app.nil?
end


def reset(username,password)
  self.username = username
  self.password = password
  self.apps = []
end

private

attr_writer :apps

def generate_production_number
  start_digit = rand(10000..99999)
  end_digit = rand(10000..99999)
  alphabet= ("A".."Z").to_a
  middle_digits = "2342"
  5.times{middle_digits << alphabet.sample}
  "#{start_digit}-#{middle_digits}-#{end_digit}"
end

end


phone = Gadget.new("user","password")
p phone.apps
phone.install_app(:Chat)
phone.install_app(:twitter)
phone.install_app(:somethinginvalid)
p phone.apps
