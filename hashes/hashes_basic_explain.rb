=begin
Hash is optimal for stroring relational Object
it's store key-value pair where key is unique. kind of dictonary
Hashes should be treated as ordered
=end
empty_hash = {}
p empty_hash.class

student_roll = {1 => "Om Jha" , 2 => "foe" ,3 => "bob",nil=>"too"}
p student_roll
p student_roll[1]
p student_roll[nil]
p student_roll["am"]  #will return nil

#Symbol Object : takes less space. Its just a lightweight version of string
p :name
p :name.class  #Symbol'
p :name.methods
p :"Om Jha".methods

person = {:name => "Om",:age => 25, :handsome => false ,
          :languages => ["Ruby","Java","Gosu","React"]}

p person
p person[:languages]

#new way of writing it
person = {name: "Om",age: 25, handsome: false ,
          languages: ["Ruby","Java","Gosu","React"]}

p person[:languages]

#converting symbols to string
p :age.to_s.class
p "age".to_sym.class
p "Train".to_sym
p :Train.to_s

#fetch method
menu = {burger: 80, chips: 50,sandwich: 30}
p menu[:sandwich]
p menu.fetch(:chips)
p menu.fetch(:pizza,"Not Found")

#adding new item
menu[:pizza] = 120
p menu
#updating existing element
menu[:chips] = 10
p menu
#store method
menu.store(:popcorn , 35)
p menu
#.length method
p menu.length
#.empty? method
p menu.empty?
