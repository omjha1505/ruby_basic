# helpful command : ri method_name(this is ri program. jsut type ri Classname/or any thing on terminal)

3.times{|num| puts "#{num} Hi"}

3.times do |index|
  puts "Square of #{index} is #{index*index}"
end

#.each method on Array
edible = ["Biscuit","choclate","Mixture"]

edible.each do |eat|
  puts "I love eating #{eat}"
end


names = ["om","moo","joo","foo"]
names.each { |element| puts "Hello #{element.upcase}" }

fives = [5,10,15,20,25,30,35,40]

def seperate_elements(array_elements)
  odd = []
  even = []
    array_elements.each do |element|
        element.even? ? even << element : odd << element
  end
  p even
  p odd
end

seperate_elements(fives)
