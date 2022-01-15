#declaring array
p []
p [].class

number = [4,6,8,10]
p number
toys = ["teddy","chess","ludo"]
p toys
mixture = [1,"text",1.232,true]
p mixture
p mixture[2].class

#2D dimensional
students = [
  ["OmJha",28,true],
  ["Pankaj",30,false],
  ["rajesh",30]
]
p students
p students[1]
p students[2]
p students[0][0]
p students[0][3]


#shorthand syntax
names = %w[jack jill john james]
p names


#new method
p [1,2,3].class
names = Array.new(4,"Hello")
p names
names = Array.new(4,[1,2])
p names

#length method
fruits = ["apple","banana","mango","grapes"]
p fruits.length
p fruits[2].length
p fruits[-2]

#fetch method
names = ["tom","jery","rick","morty"]
p names.fetch(2)
p names.fetch(10,"cartman")


#extract sequential array element
nums = [1,3,5,7,9,11,13,15,17]
p nums[2]
p nums[2,4] #pull elements from 2 to index 4 i.e [5,7,9,11]


#extract sequential array element with range object
numbers = [1,3,5,6,8,9,11,14,45,56,67,98,100]
p numbers[3..6]

#.values_at method
animals = ["human","tiger","lion","dog","cat"]
p animals.values_at(0)
p animals.values_at(0,2,4,-1,100,-12)

# .slice method
random_numbers = [0,2,45,43,5436,23,12,54,7,78]
p random_numbers.slice(3)
p random_numbers.slice(3,5)
p random_numbers.slice(4..6)

#overwriting arrays : mutation
vegetables = ["potato","onion","tomato","beans"]
p vegetables[1]
p vegetables[1] = "chilli"
p vegetables
vegetables[-1] = "kaddu"
p vegetables
vegetables[10] = "cauliflower"
p vegetables


#length,size and count method
p [1,2,3,4,5].length
p [1,2,3,4,5,nil,"test"].size
p [1,2,3,4,5,nil,"test"].count  #count is expensive
p [1,2,3,4,5,2,2,nil,"test",2].count(2)

#empty and nil methods
p [1,4,"foo"].empty?
p [].empty?
p [].nil?
anything = [1,5]
p anything[5].nil?


#first and last method
arr = [12,24,345,234,546,56,67,2343,4564]
p arr.first
p arr.last
p arr.first(3) #first 3 elements
p arr.last(3)  #last 3 elements

# push,shovel and insert methods
location = ["home","office","bar"]
p location
location.push("restaurant","saloon")
p location
location << "therater" << "gym" #shovel methods
p location
location.insert(1,"busstop","airport")
p location

#pop method
location.pop
p location
location.pop(2) #will pop 2 item from last
p location

#shift and unshift methods
arr = [1,2,3,4,5,6,7,8,9,10]
p arr
extract = arr.shift(3)
p extract
replace_elements = arr.unshift(11,12,13)
p replace_elements


# == and != operator on array
a = [1,2,3]
b = [1,2,3,4]
c = [3,2,1]
d = [1,2,3]

p a == d
p a != c
p a != d

#spaceship operator <=>
p 5<=> 5  #0 if both side are equal
p 5<=> 8
p 5<=> 3
p 5<=> "Hello" #nil if values are uncomparable

p [3,4,5] <=> [3,4,5]
p [3,4,5] <=> [nil,4,5]
p [3,4,5] <=> [3,4,10]
p [3,4,5] <=> [3,4,3]

#convert Range object to Array object
letter_range = "A".."K"
p letter_range
p letter_range.to_a

# is_a? method
puts 1.is_a?(Integer)
puts 1.is_a?(String)
puts 1.is_a?(Object)
puts 1.is_a?(BasicObject)
puts [1,2,3,"TEST"].is_a?(Array)

arr = [1,2,3]
if arr.is_a?(Array)
  arr.each{ |chr| puts chr  }
end
