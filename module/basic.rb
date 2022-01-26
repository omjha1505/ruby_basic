require "./module/basic_two.rb"

=begin
  -> module is a toolbox or container of methods and constants
  -> module creates namespaces for methods with the same name
  -> It cannot be used to create the Instances
  -> It can be mixed into classes to add the behaviour
  -> Modules name are writeen in UpperCamelCase
  -> constant name are in all CAPS
  -> module method accessed with the . operator
  -> access constants with ::(scope resolution operator)
=end
module LenghtConversion
  WEBSITE = "www.google.com"

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end
end

puts LenghtConversion::WEBSITE
puts LenghtConversion.miles_to_feet(100)
puts LenghtConversion.miles_to_inches(100)
puts Square.area(12)
puts Rectangle.area(12,10)
