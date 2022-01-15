i = 1

while i < 10
  puts i
  i += 1
end


status = true

while status
  print "Please enter the username : "
  username = gets.chomp.downcase
  print "Please enter your password : "
  password = gets.chomp.downcase

  if (username == "omjha" && password == "password")
    print("Login Successful!!!!")
    status = false
  else
    print("Incorrect password. Please try again!!\n")
  end
end
