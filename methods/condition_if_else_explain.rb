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
