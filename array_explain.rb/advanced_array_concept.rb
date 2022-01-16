=begin
Brief discussion on Variable and Objects Allocation :
 * All Ruby Objects live on heap(an area of computer memory)
 *Ruby creates spaces for each object on the heap
 *when object is created , ruby returns the heap address,so
 technically variable to not hold the object, it holds the reference address
 of the heap memory allocation
* so, if variable is assigned to another variable,it will
point to the same object.so modification in one will reflect in both the variables
=end

a = [1,2,3]
b = [1,2,3]
#here a and b are different position in memory
p a.object_id,b.object_id
b = a
p a.object_id,b.object_id
a.push(4)
p b
p a.object_id,b.object_id
b.push(5)
p a , b
p a.object_id,b.object_id

#dup method
arr_one = [1,2,3]
arr_two = arr_one.dup  #a way to create the copy object in different heap locations


#splat arguments : used when exact no. of arguments is not know
def sum(*numbers)
 sum = 0
 numbers.each{ |num| sum+=num }
 sum
end
p sum(1,2,3,4,12)

#any and all method
p [1,2,3,45,7].any? do |number|     #any can be used o check if any circumstances is evaluating true
  number.even?
end

p [2,3,4,6].all? {|n| n.odd?}    #all is complementary to any


#find and detect method. both are identical . just a different name

words = ["refrigerator" , "dictionary","microwave","playpus"]
p words.select {|word| word.length > 8} #will return the array of objects which satisfy the block condition


#uniq method : return array of objects after removing the identical arr_one

p [2,4,2,1,34,1,5,1,7,8,8,9,9].uniq

#compact method : remove all the nil objects
p [1,2,3,nil,23,123,nil].compact

#inject and reduce method. They are identical
result = [10,20,30,40].reduce(0) do |pre,curr|
  puts "Previous Value #{pre} and the current value #{curr}"  #This method keep track of the previous value
  pre + curr
end
p result


#flatten method . e.g :changes 2D/3D etc.. to 1D

registrations = [
  ["Bob","Dan","Jack"],
  ["Om","Moo","foo"]
]
p registrations.flatten

#zip method : combining the Array.
names = ["boo","moo","jooo"]
registration = [true,false,false]
p names.zip(registration)
p [1,2,3].zip([4,5,6],[true,false,true])

#sample method : will return some random object from the Array
number = [2,4,5,12,45,465,65,324]
puts number.sample

#multiplying array with *
num = [1,4,23,12,232,1231]
puts num*3
str = ["om","foo"]
puts str*2

#union : combine arrays and remove duplicates
p [1,2,3] | [3,2,4,56]

#remove element from array that exists in other array
p [1,2,3,4,5] - [1,5]


#Array Intersection
p [1,2,3,4,5,6] & [3,4,6]
