module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end
end


class BookStore
  include Purchaseable
  def purchase(item)
    "you bought a copy of #{item}"
  end
end

class SuperMarket
  include Purchaseable
end

#Applice for Sub Class tooo
class CornerMart < SuperMarket
end

nobel = BookStore.new
p nobel.purchase("Half Human")

shop = SuperMarket.new
p shop.purchase("Rice")

corn_mart = CornerMart.new
p corn_mart.purchase("Ice Cream")

#Ansestor method

p BookStore.ancestors
puts BookStore.methods.sort
#p BookStore.purchase(1984)
