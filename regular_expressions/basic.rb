phrase = "The Ruby Programming is easy"


puts phrase.start_with?("The")
puts phrase.end_with?("easy")
puts phrase.include?("is")
puts phrase.include?("and")


#Intro to regular expression
#Regexp is another Ruby Object/class
#can be created by // syntax

puts //.class #will return Regexp
phrase = "The Ruby Programming is easy"
puts phrase =~ /R/  #will give index position of first R



#scan method
voicemail = "I am reachable at 700-407-4536 or test@test.com"
p voicemail.scan(/e/) #will return array with all e's
p voicemail.scan(/[er]/) #will return array with all e's and r's
p voicemail.scan(/\d/) # \d will look for digit
p voicemail.scan(/\d+/) # \d+ will look for continuous digit.
voicemail.scan(/\d+/) { |digit_match| p digit_match.length }

#wild-card symbol
phrase = "The Ruby is quite easy"
#puts phrase.scan(/./)           #will look for all the characters
puts phrase.scan(/Ru/)

#The Back-Slash

paragraph = "This is my essay. I Rank it a 5 out of 5."

p paragraph.scan(/\./)
p paragraph.scan(/\d/)
p paragraph.scan(/\D/)  #D means non - digit
p paragraph.scan(/\s/)  #this will look for white space

#Regex Anchors
poem = "99 bottles of beer of the wall, 99 bottles of beer"
p poem.scan(/\A\d/)
p poem.scan(/eer\z/) #z means look from last

#Exclude character
sales = "I bought 0 apples, 25 bananas and 4 oranges at the store"
p sales.scan(/[^aeiouAEIOU,\s\d\.]/).length

#sub method
puts "whimper".sub("m","s")  #will replace the first occurance of m to s
puts "whimper".sub!("m","s")  #bang metod is available for it

#gsub
puts "an apple".gsub("a","m") #will replace all occurance of a to m
puts "(555)-555 1234".gsub(" ","").gsub("(","").gsub(")","").gsub("-","")
puts "(555)-555 1234".gsub(/[-\s\(\)]/,"")



#for more info refer rubular.com
