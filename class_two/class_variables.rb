class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Book < Product
  @@book_counter = 0

  def self.counter
    @@book_counter
  end

  def initialize
    super
    @@book_counter += 1
  end
end


a = Widget.new
b = Widget.new

p Widget.counter
p Product.counter

c = Book.new
d = Book.new
p Book.counter
p Product.counter
