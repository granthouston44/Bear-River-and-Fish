require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

def setup

@fish1 = Fish.new("Trout")
@fish2 = Fish.new("Mutated, Three-eye")
@fish = [@fish1, @fish2]

@river = River.new("Clyde")

end

def test_get_river_name
  assert_equal("Clyde", @river.name)
end









end
