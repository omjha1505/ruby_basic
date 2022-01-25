puts "This is file two"
require_relative "file_one"  #will try to search in current path
require "./file_one"
