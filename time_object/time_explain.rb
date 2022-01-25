require 'time'

puts Time.new
current_time = Time.new
p current_time
p current_time.class

p Time.new(2015)
p Time.new(2015,3,20)
p Time.new(2015,3,20,7,30,12)

puts "__________________________"

today = Time.now
p today.month
p today.day
p today.year
p today.hour
p today.min
p today.sec

p today.yday #day of year
p today.wday #week of year(0 to 6 where 0 represent sunday)


puts "__________________________"

#Boolean/preticate method

birthday = Time.new(1991,4,12)
p birthday.monday?
p birthday.friday?
p birthday.dst? #check for day light saving

puts "__________________________"

#add substract method
start_of_year = Time.new(2022,1,1)
p start_of_year + 60 #here 60 is in second
p start_of_year - 180

puts "__________________________"
#comparable methods in time object
my_birthday = Time.new(1993,05,15)
random_day = Time.new(1992,12,12)

p my_birthday > random_day
p my_birthday < random_day
p my_birthday == random_day


#convert the time object to other object
someday = Time.new(2000,12,05)
p someday.class
p someday.to_s.class
p someday.ctime
p someday.to_a

#converting Time object to formatted String . look for strftime API
some_random_day = Time.new(2022,05,12)
p some_random_day.strftime("%B %d, %Y")


# .parse and .strptime method
puts Time.parse("2012-04-12")
puts Time.strptime("03-04-2012","%m-%d-%Y")
