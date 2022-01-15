#Method declaration with no argument
def my_introduction
  expression = "Ruby is fun" #Local Variable declaration
  puts "I am Om Prakash Jha"
  puts "I am 28"
  puts expression
end


#Parameterized method
def praise_person(name,age)
  puts "#{name} is amazing person. He's just #{age}"
end


#method with return value
def add_two_numbers(num1,num2)
  puts "You are too Lazy.. Just add it by yourself na.."
  return num1 + num2  # this is explicit return. if its a last line , then return key is not required here. it will just return the last line
end


#each method in ruby return something. here its nil
def nothing
  puts "Blah Blah Blah!!!"
end

def return_string
""
end

#invoking Method
#my_introduction
#my_introduction()
#praise_person("Om Prakash Jha",26)
#p add_two_numbers(99,109)
#p nothing
#p return_string
