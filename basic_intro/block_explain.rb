10.times {puts "Ruby is funnnyyyy"} # here 10.times define the number of expected execution and {} is block that defines what to do.

#Other way of doing it or when there's multiple line execution needed

3.times do
  puts "Ruby on Rails"
  puts "Its simple"
  puts "loading......"
end


#block variable which is temporary and is only available in block context

3.times do |count|
  puts "we are currently on loop number #{count}"
end

10.times do |count|
  count += 1
  puts count*3
end


10.times {|count| puts "#{3*(count+1)}"}


#downto method

5.downto(1) {|i| puts "countdown: #{i}"}


5.downto(1) do |current_number|
  puts "we are currently on #{current_number}"
end


#upto methods

5.upto(10) do |num|
  puts "we are moving up to #{num}"
end

#step method
1.step(100,10) {|num| puts " we are stepping...#{num}"} # First argument is till where you want to go and second defines to what number you want to step

0.step(50,7) do |num|
  puts "An Example with step block method #{num}"
end
