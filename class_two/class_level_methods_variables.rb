=begin
it will defined by prefixing @@
Instance variable begins with @
class methods are prefixed with the self keyword
Careful : in an instance method defination , self refers to the object
=end
class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.descrition
    "Hi There . I am the blueprint of Bicycle"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

end

puts Bicycle.descrition
puts Bicycle.count
cycle =  Bicycle.new
p cycle.maker
