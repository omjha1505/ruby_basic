#Its a way to add the functions/methods to existing OOTB Class
class Array
  def sum
    total = 0
    self.each{|num| total += num if num.is_a?(Numeric)}
    total
  end
end

class String
  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0
    self.downcase.each_char { |chr| sum += alphabet.index(chr)+1 }
    sum
  end
end

p [1,2,4,5,"Hello",6,false].sum
p "abc".alphabet_sum
p "zzz".alphabet_sum
