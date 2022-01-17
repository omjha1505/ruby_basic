#create hash with the default value
fruit_price = Hash.new("Not Found") #here the argument "Not Found" is default value
fruit_price[:banana] = 30
fruit_price[:apple] = 80


p fruit_price
p fruit_price[:kiwi]
fruit_price.default = "This is new default!!!!!"
p fruit_price
p fruit_price[:kiwi]


#convert hash to Array and Vice-Versa
capitals = {Jharkhand: "Ranchi",Bihar: "Patna",Tamilnadu: "Chennai" }
p capitals.to_a


state_capitals = [[:Jharkhand, "Ranchi"],
                  [:Bihar, "Patna"],
                  [:Tamilnadu, "Chennai"]]

p state_capitals.to_h

#the sort and sort_by methods : will always return MD Arrya
capitals = {Jharkhand: "Ranchi",Bihar: "Patna",Tamilnadu: "Chennai",Goa: "Panji" }
p capitals.sort
p capitals.sort_by{|key,value| key }
p capitals.sort_by{|key,value| value }

#the key and value method
capitals = {Jharkhand: "Ranchi",Bihar: "Patna",
  Tamilnadu: "Chennai",Goa: "Panji",
Maharastra: "Mumbai" }
puts capitals.key?(:Bihar)
puts capitals.key?(:Assam)
puts capitals.value?("Ranchi")
puts capitals.value?("Chandigard")


#Hashes as method argument
def calculate_bil(price,tip,tax)
  tax_amount = price * tax
  tip_amount = price * tax
  price + tax_amount + tip_amount
end

#better version of it
def calcualate_bill_better_version(hash_info)
  tax_amount = hash_info[:price] * hash_info[:tax]
  tip_amout = hash_info[:price] * hash_info[:tip]
  hash_info[:price] + tax_amount + tip_amout
end

p calcualate_bill_better_version({price:120,tax: 0.12,tip: 0.10 })
p calcualate_bill_better_version(price:120,tax: 0.12,tip: 0.10 ) #here {} is redundant


#delete method
capitals = {Jharkhand: "Ranchi",Bihar: "Patna",
  Tamilnadu: "Chennai",Goa: "Panji",
Maharastra: "Mumbai" }
p capitals
capitals.delete(:Jharkhand) #no bang method required. delete will mutate the Hash
p capitals

#select and reject methods
ingredient = {sugar: 40, salt: 20 , pepper: 3, floor: 50, panner: 30}

high = ingredient.select{|key,value|  value > 30}
p high
low = ingredient.reject{|key,value|  value > 30}
p low


#merge method : comine two Hashes
market = {garlic: 3, tomato: 2, milk: 10}
kithchen = {bread: 10, egg: 2}
market.merge!(kithchen)
p market
p kithchen
