#Numeric Range
nums = 1..10
secon_num = 1...10 #... means excude the lastnumeber. here 10
p nums
p nums.class
p nums.first
p nums.last
p nums.first(4)
p nums.last(4)
puts (11..30).first(5)

#Alphabetic Range
alphabet = "a".."z"
p alphabet
p alphabet.first(10)
p alphabet.last(10)


#size method on range object
numbers = 40..100
p numbers.size

#check if range contain some particular value
half_alphabet = "a".."m"
p half_alphabet.include?("f")
p half_alphabet.include?("r")
p half_alphabet === "k"       #here === act as include? method
