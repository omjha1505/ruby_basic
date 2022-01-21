=begin
  *block is collection of code to be executed
  *It must be attached to a method call
  *can be defined with {} or do end
=end

[2,4,6,8,10].each {|elm| puts elm.even?}

colors = ["red","black","white"]
statements = colors.each {|color| "#{color} is great color"}
p statements

5.times {|index| puts "Iteration Number #{index} is running"}

#yield keyword

def pass_control
  puts "This is inside pass_control method"
  yield #pass control from method to block
  puts "I am back in pass_control method"
end

pass_control{puts "I am Yield Block"}

pass_control do
  puts "This is line one of Yield"
  puts "This is line two of Yield"
end


def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end
who_am_i{"stong"}
who_am_i{"Talented"}


def multiple_pass
  puts "I am in multiple_pass"
  yield
  puts "I am back in multiple_pass"
  yield
end

p multiple_pass{"I am repetative yield"} #return of yield is getting returned here


def multiple_pass_second_version
  puts "I am in multiple_pass second version"
  yield
  puts "I am back in multiple_pass second version"
  yield
end

p multiple_pass_second_version{puts "I am repetative yield"} #this will be nil as puts return the nil
