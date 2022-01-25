=begin
nameless or annonymus methods
almost identical to Proc
Its a Object like Proc
=end

squares_lambda = lambda {|num| num ** 2}
proc_lambda = Proc.new {|num| num ** 2}

p [1,2,3].map(&proc_lambda)
p [1,2,3].map(&squares_lambda)

#differences between Proc and lambda
some_proc = Proc.new{|name,age| "Your name is #{name} and age is #{age}"}

p some_proc.call("Boris",25)
p some_proc.call("Boris")  #This will work fine .It will just pass the nil if proper argument are not passed


some_lambda = lambda{|name,age| "Your name is #{name} and age is #{age}"}

p some_proc.call("Boris",25)
p some_proc.call("Boris")  #This will work fine .It will just pass the nil if proper argument are not passed

#more efficient way

to_euros = lambda {|dollar| dollar * 0.95}
to_rupees = lambda {|dollar| dollar * 75}

def convert(dollar,currency_lambda)
  currency_lambda.call(dollar) if dollar.is_a?(Numeric)
end

def convert_to_euro(dollar)
  dollar * 0.95 if dollar.is_a?(Numeric)
end

def convert_to_rupee(dollar)
  dollar * 72 if dollar.is_a?(Numeric)
end


p convert_to_euro(1000)
p convert_to_rupee(1000)


#p convert(1000,"euros"){|dollar| dollar*0.95}
#p convert(1000,"rupees"){|dollar| dollar*72}


p convert(1000,to_euros)
p convert(1000,to_rupees)
