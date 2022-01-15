numbers = [3,4,5,6]

for num in numbers
  puts num
end


p num  # last element in the loop still exist in the scope

rng = 1..10
for element in rng
  puts element
end

puts element
