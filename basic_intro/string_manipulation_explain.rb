p 5
p 5.next
p 5.to_s #change to string


name = "OmJha"
p "Hello #{name}"

age = 25
p "I am #{age} years old"

p "The multiplication of 12 and 13 is #{12 * 13 }"

#String Methods and manipulation

puts "************String methods and manipulation*************"

#Other way to declare the string
name = String.new("Om Prakash Jha")
puts name
#multi-line string
words = <<MLS
    This is a example
    of Multi line     String.It's having
    tab space toooo...
MLS
puts words


#escape character

puts "Hello OmJha. Its 'time' to sleep"
puts 'Hello OmJha. Its "time" to sleep'

puts "Om Says \"GoodNight\""
puts 'Om Says \'GoodNight\''


# Line Break

puts "This is example\n of linebreak"


#single quote vs double quote : LineBreak and variable interpretation do not work with the single quote

puts "Hello\nworld"
puts 'hello\nworld'
test = "Hello World"
puts "#{test}"
puts '#{test}'


#concatenation
f_name = "om"
l_name = "praksh"
puts f_name + l_name
f_name += l_name
puts f_name

p f_name << l_name << " jha" # Shovle function for concatenation

p f_name.prepend(l_name) #prepand means add before

#playing with the character
story = "once upon a time in a land far, far away"
p story[3]
p story[-20]
p story[3,12]

#range method
p story[21..33]
p story[30..-3]

#overwriting the character
thing = "hakuna matata"
p thing
thing[2] = "o"
p thing

fact = "I love BlueBerry"
p fact
fact[7,4]="rasp"
p fact

#case methods
puts "hello".capitalize
puts "hello".upcase
puts "OM JHA".downcase
puts "OmpRaKashJha".swapcase

#reversr methods
puts "back to front".reverse

#bang method
word ="hello"
p word.capitalize #This will just return the new object of string. word here is still the same i.e immutable
p word
p word.capitalize! # appending !(bang methods) means modifying the string
p word

s_word = "om prakash jha"
p s_word
p s_word.upcase
p s_word
p s_word.upcase!
p s_word

#include method
name ="John Snow Om Jha"
p name.include?("Om J")

#empty? and nil? methods
p "".empty?
p "".nil?
