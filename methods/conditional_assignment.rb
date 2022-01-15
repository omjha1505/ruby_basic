y = nil
p y

y ||= 5  #here y is nil. so assignment will happen.
p y

y ||= 10 #here y is not nil. so assignment will not happen
p y


greeting = "hello"
extraction = 12
letter = greeting[extraction]
p letter
letter ||= "not found"
p letter
