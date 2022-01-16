#split method
senetence = "Hi. My Name is Om Prakash Jha.focus sould be the space here"
p senetence.split   #this will return Array of string object. space is default delimeter
p senetence.split("o")

#Iterate over the characters in the word
"Hello World".each_char {|char| puts "#{char}"}
p "Boris".split("")  #will return the Array of each characters
p "Boris".chars

#.join method on Array
names = ["joe","foo","moo","boo"]
p names.join
p names.join("-") #will add this delimeter b/w each element

#.count method
puts "Hello World".count("o")


#index and rindex method
fact = "Ruby is Easy"
p fact.index("y")
p fact.rindex("y")  #same as index but will search from the lase


#insert method
typo = "GeorgWashinton"
typo.insert(5,"e")
p typo

#squeeze method
sentence = "TThe caat jummmmp overrrr thhhhe fenceee"
puts sentence.squeeze     #reduce the repetated characters to 1
puts sentence.squeeze("h")


#clear method
word = "welcome to 2022"
p word.clear            #will clear everything and return ""

#delete method
p word.delete  #same as clear. but here we can specify the delimeter
word = "Lion is king of forest"
p word.delete("is")
