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


#nested each
shirts = ["stripped","plain white","cheq","plaid"]
ties = ["polka dot","solid color","boaring"]

shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION A  :  #{shirt} and #{tie}"
  end
end


# .each method with the index

colors = ["red","green","blue"]
colors.each_with_index do |color,i|
  puts "At index : #{i}, the color is #{color}"
end


nums = [1,2,3,4,5]
sum = 0
nums.each_with_index do |num,index|
  result = (num*index)
  sum += result
end
p sum


#.map and .collect method. Both are identical. perform the same thing
numbers = [1,2,3,4,5]
squares = numbers.map { |number| number * number  }
p squares

fahr_temperature = [105,73,40,18,-2]
cel_temperature = fahr_temperature.map do |temp_fh|
  minus32 = temp_fh - 32
  minus32*(5.0/9.0)
end

p cel_temperature

# Iteration with the while and until method
animals = ["lion","tiger","leopard","zebra"]

i = 0
while i < animals.length
  puts animals[i]
  i+=1
end


#break keyword
color = ["red","white","orange","black","pink","blue"]
i = 0
while color.length
  if color[i] == "black"
    puts "Black Found"
    break
  else
    puts "Not a Black.. its a #{color[i]}"
  end
  i += 1
end


#next keyword - its like continue
numbers = [1,2,3,4,"Hello",5,6,nil,7,8]
numbers.each do |num|
  unless num.is_a?(Integer)
    next
  else
    puts "The square of this NUMBER is #{num**2}"
  end
end


#reverse method on array
p "hello".reverse
p [1,2,3].reverse
