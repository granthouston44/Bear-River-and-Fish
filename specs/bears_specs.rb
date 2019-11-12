require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../fish.rb')

class BearsTest < MiniTest::Test

def setup
  @bear = Bears.new("Yogi", "Grizzly")
end

def test_bear_name
  assert_equal("Yogi", @bear.name)
end



end
