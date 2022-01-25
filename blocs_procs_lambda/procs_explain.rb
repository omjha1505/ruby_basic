=begin
Procs is new type of Object
very efficient way of writing the repetative blocks
=end

cubes = Proc.new { |num| num **3 }

a = [1,2,3,4]
b = [5,6,7,8]
c=  [9,10,11,12]

a_cubes = a.map(&cubes)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_cubes,b_cubes,c_cubes

#more efficent way

a_cubes_2 , b_cubes_2 , c_cubes_3 = [a,b,c].map { |array| array.map(&cubes) }
p a_cubes_2 , b_cubes_2 , c_cubes_3

currencies = [10,20,30,40]
to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }

p currencies.map(&to_euros)
p currencies.map(&to_rupees)

ages = [10,30,65,72]

is_old = Proc.new do |age|
  age > 55
end

p ages.select(&is_old)
p ages.reject(&is_old)

#.block_given method
def pass_control_on_condition
  puts "Inside the Method"
  yield if block_given?
  puts "Back Inside the method"
end
pass_control_on_condition
pass_control_on_condition{"Hi..I am Yield"}

def speak_the_truth
  yield "OmJha" if block_given?
end

speak_the_truth{ |name| puts "#{name} is lolll" }
speak_the_truth{ |name| puts "#{name} is awsome" }


def speak_the_truth(name)
  yield name if block_given?
end
speak_the_truth("OmJha"){ |name| puts "#{name} is very rude" }



def speak_the_truth(name,age)
  yield name,age if block_given?
end
speak_the_truth("OmJha",26) do |name , age|
  p name,age
  puts "#{name} is #{age} year old"
end


def number_evaluation(num1,num2,num3)
  puts "inside the number_evaluation method"
  yield num1,num2,num3
  puts "once again inside the number_evaluation method"
end

number_evaluation(12,14,15) do |num1,num2,num3|
  p num1,num2,num3
  puts "The sum of #{num1},#{num2},#{num3} is #{num1+num2+num3}"
end

#custom each method using yield
 def custom_each(array)
   i = 0
   while i < array.length
     yield array[i]
     i += 1
   end
 end

 names = ["Om","Boo","Moo"]
 numbers = [2,34,134536]

 custom_each(names){|name| puts "content is #{name}"}
 custom_each(numbers){|num| puts "Number is #{num}"}

# calling function with the parameter even if parameter is not defined in function
def greeter
  puts "I'm in greetor method"
end

phrase = Proc.new do
  puts "Insie the Proc"
end

greeter(&phrase)


hi = Proc.new{puts "Hi there"}
5.times(&hi)
hi.call


#passing ruby method as Proc
p ["1","2","3"].map { |number| number.to_i }
p ["1","2","3"].map(&:to_i)
p [1,2,3,4,5].select {|num| num.even?}
p [1,2,3,4,5].select(&:even?)

#methods wih Proc parameters

def talk_about(name,&myprc)
  puts "let me tell you about"
  myprc.call(name)
end

good = Proc.new do |name|
  puts "#{name} is brilliant!!!"
end

bad = Proc.new do |name|
  puts "#{name} is very serious guy!!!!"
end

talk_about("OmJha",&good)
talk_about("Prakash",&bad)
