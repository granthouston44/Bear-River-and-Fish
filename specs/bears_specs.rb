require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearsTest < MiniTest::Test

  def setup
    @bear = Bears.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Mutated, Three-eye")
    @fish = [@fish1, @fish2]
    @river = River.new("Clyde", @fish)

  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_roar
    result = @bear.roar
    assert_equal("RAAAWWWWRRRRR", result)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_food_count
    assert_equal(0, @bear.stomach)
  end

  def test_take_fish
    @bear.take_fish(@river, @fish2)
    assert_equal(1, @river.fish_count)
    assert_equal(1, @bear.stomach)
  end



end
