#if statement
if 5 < 7
  puts "that's true"
end



#false and nil is only the false value. all other values are truthy value
if 10
 puts "That's a truthy value"
end


if nil
  puts "that's a falsey value"
end

#if-else statement
color = "white"

if color == "red"
  puts "color is red"
elsif color == "green"
  puts "color is green"
else
  puts "Its neither green nor red.. Its Default :-)"
end


grade = "C"

if grade == "A"
  puts "Next to Issac Newton"
else
  puts "That's completly unacceptable"
end


#method with the if-else condition
def odd_or_even(num)
  if num.odd?
    puts "#{num} is odd"
  else
    puts "#{num} is even"
  end
end

odd_or_even(10)

#multiple conditional
age = 22
ticket = "General Admission"
id = true

if age > 21 and ticket == "General Admission" and id
  puts "Congtatulation.. welcome to showww"
else
  puts "Better luck next time"
end


budet = 5
price = 10
mood = "happy"

if budet > price || mood == "happy"
  puts "I wil buy it even if don't have budget.. I will use my CC"
else
  puts "I can't. I don't have budget and mood both"
end

#Paranthesis conditional
def authenticate_agent(rank,name,credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access Granted."
  else
    puts "Access denied #{name}"
  end
end

authenticate_agent("008","Om Jha","Secret Agent")


#nested if statement
def meal_plan(time_of_week,time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "morning"
       "idli sambar"
    elsif time_of_day == "afternoon"
         "rice daal sabzi"
    elsif time_of_day == "night"
         "roti bhujiya"
    end
  elsif time_of_week == "weekend"
    if time_of_day == "morning"
       "roti sabzi"
    elsif time_of_day == "afternoon"
         "chicken rice"
    elsif time_of_day == "night"
       "sattu roti"
    end
  end
  end

p meal_plan("weekday","afternoon")

#respond_to? method
num = 999
p num.respond_to?("next") #respond_to checks - a way to check if method is applicable or not
p num.respond_to?(:next) #just another way
if num.respond_to?("next")
  p num.next
end

#ternary operator
puts 1 < 2 ? "that's true" : "that's false"
num = 1201
puts num.even? ? "Yes.. Its even" : "No. Its odd"


#default and optional argument
def make_phone_call(number,international_code = 1,area_code = 646)
  puts "Dialled number is #{international_code}-#{area_code}-#{number}"
end

make_phone_call(9905512345)
make_phone_call(9905512345,4)
make_phone_call(9905512345,4,121)

#call method from method
def add(a,b)
  a+b
end

def substract(a,b)
  a-b
end

def multiply(a,b)
  a*b
end

def divide(a,b)
  a/b
end

def calculator(a,b,operation="add")
  if operation == "add"
    add(a,b)
  elsif operation == "substract"
    substract(a,b)
elsif operation == "multiply"
  multiply(a,b)
elsif operation == "divide"
  divide(a,b)
  else
    "That's not a valid operation"
  end
end

p calculator(10,11,"substract")
