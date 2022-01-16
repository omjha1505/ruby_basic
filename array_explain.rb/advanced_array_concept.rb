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
