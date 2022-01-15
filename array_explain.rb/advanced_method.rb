
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

#sort method on array
numbers = [2,1,34,12,5,6,1,3,6,1,2]
p numbers.sort

#concat method
p [1,2,3]+[4,5,6,7,8,9,10]

#max and min methods on array

stock_prices = [23.12,24.19,45.54,42.12]
p stock_prices.max
p stock_prices.min


#.include? predictive methods
p [2,4,6,12,11,543].include?(6)

#index and find_index method : Both are same
p [3,43,12,345,56,1].index(345)
p [3,43,12,345,56,1].find_index(345)

# .select method in array
grades = [56,78,92,33,89,65]
matches = grades.select do |number|
  number >= 75 #here give bollean only
end

p matches

#.reject method jsut opposite of .select method
# .select method in array
grades = [56,78,92,33,89,65]
matches = grades.reject do |number|
  number >= 75 #here give bollean only
end

p matches


#.partition method
grades = [56,78,92,33,89,65]
p grades.partition{|grade| grade >= 75}
