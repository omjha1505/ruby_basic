=begin
Ruby is dynamically typed. i.e variable type is not required to be declared.
The same variable can be assigned to another one of differnet type.

variables are pointed to an object with the equal assigned.
right side of the equal sign is always evaluated first.
variables names are case sensitive
don't use the Ruby reserved words like puts prints
=end

name = "Om Prakash"
last_name = "Jha"
is_handsome = true
age = 28 + 1

puts name
puts last_name
puts name + " " + last_name
puts is_handsome
puts age

age = 21 #Re-Assignment Happen
puts age

age = "twenty-one" #Re-Assignment Happen
puts age



#Parallel Variable Happen

a = 10
b = 20
c = 30

p a,b,c

a,b,c,d = 11,22,33
puts a,b,c

#swapping the value

a , b = 10 , 20
puts a,b

a,b = b,a
puts a,b
