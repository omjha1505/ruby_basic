def fizzbuzz(number)
i = 1
  until i > number
    if i % 3 == 0 && i % 5 == 0
      puts "#{i} FizzBuzz"
    elsif i % 3 == 0
      puts "#{i} Fizz"
    elsif i % 5 == 0
      puts "#{i} Buzz"
    end
    i += 1
  end
end

fizzbuzz(45)
