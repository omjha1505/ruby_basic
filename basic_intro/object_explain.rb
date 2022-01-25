=begin


=end

p "hello world".length
p "hello world".upcase
p "HELLO WORLD".downcase
p 10.next
p -1.next


#BasicObject is in top of hiararchy
p 5.class                                             #Integer
p 5.class.superclass                                  #Numeric
p 5.class.superclass.superclass                       #Object
p 5.class.superclass.superclass.superclass            #BasicObject
p 5.class.superclass.superclass.superclass.superclass #nil


p 5.class.ancestors

#methods method 

puts 5.methods.sort  #this will en-list all the available methods

puts 5.public_methods
