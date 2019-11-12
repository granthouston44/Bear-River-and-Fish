require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

def setup



@fish1 = Fish.new("Trout")
@fish2 = Fish.new("Mutated, Three-eye")
@fish = [@fish1, @fish2]
@river = River.new("Clyde", @fish)

end

def test_get_river_name
  assert_equal("Clyde", @river.name)
end

def test_number_of_fish
assert_equal(2, @river.fish_count)
end

def test_lose_fish
  @river.lose_fish(@fish1)
  assert_equal(1, @river.fish_count)
end





end
