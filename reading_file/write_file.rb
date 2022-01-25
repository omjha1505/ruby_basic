File.open("write.txt","w") do |file|  #here the "w" argument is for different operation. line a for append , w for overwrite the file content
  file.puts "I am Writing with Ruby"
  file.write "I am again Writing with Ruby"
end
