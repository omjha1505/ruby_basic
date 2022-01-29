module Annoncer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Annoncer
end

class Cat
  extend Annoncer
end

p Dog.who_am_i  #with extend keyword, methods are in class level
