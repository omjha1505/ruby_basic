module Square

  def self.area(side)
    side * side
  end

end

module Rectangle
  def self.area(len,wid)
    len * wid
  end
end


p Square.area(12)
p Rectangle.area(12,10)
