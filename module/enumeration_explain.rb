class Store
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do|snack|
      yield snack
  end
end
end


edible = Store.new
edible.add_snack("mixture")
edible.add_snack("slim jims")
edible.add_snack("biscut")

edible.each{|snack| puts "#{snack} is deliciuos"}
