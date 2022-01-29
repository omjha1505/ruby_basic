class Employee
  attr_accessor :age
  attr_reader :name
  def initialize(name,age)
    @name = name
    @age = age
  end
  def introduce
    "Hi my name is #{name} and i am #{age} year old."
  end
end

class Manager < Employee
  attr_reader :rank
  def initialize(name,age,rank)
    super(name,age)
    @rank = rank
  end
  def yell
    "I am the boss!!!"
  end
  def introduce
    result = super
    result += "I'm also a Manager"
  end
end


class Worker < Employee
end

p Manager.ancestors
p Manager < Employee
#bob = Manager.new("Bob",50)
dede = Worker.new("Dede",32)
#p bob
# bob.class
#p bob.introduce
#p bob.is_a?(Manager)
p dede.is_a?(Manager)
p dede.is_a?(Employee)
p dede.instance_of?(Worker)
p dede.instance_of?(Employee)
#p bob.yell

cartman = Manager.new("Cartman",14,2)
p cartman.introduce
p cartman.rank
