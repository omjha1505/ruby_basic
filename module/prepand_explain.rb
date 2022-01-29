module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end
end


class BookStore
  prepend Purchaseable   #Its make the Purchaseable in the above hirarchy then BookStore
  def purchase(item)
    "you bought a copy of #{item}"
  end
end

p BookStore.ancestors
