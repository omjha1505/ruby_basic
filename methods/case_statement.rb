def rate_my_food(food)
 case food
 when "idli"
   "#{food} is great"
 when "chicken", "mutton","paneer"
    "#{food} is awsome"
  else
    "#{food} - I really don't know about it"
 end
end

p rate_my_food("chicken")
p rate_my_food("kaddu")
p rate_my_food("idli")



def calculate_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..90 then "B"
  when 70..80 then "C"
  when 60..70 then "D"
    else
      "Fail Man"
  end
end

p calculate_grade(85)
