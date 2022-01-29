class Player
  def play_game
    rand(1..100) > 50 ? "Winner":"Looser"
  end
end

bob = Player.new
boris = Player.new

def boris.cheat
  "Winner"
end

p boris.play_game
p boris.cheat

p bob.singleton_methods
p boris.singleton_methods
p boris.singleton_class
p bob.singleton_class
