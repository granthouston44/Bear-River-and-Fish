require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

def test_fish_name
  fish = Fish.new("Trout")
  assert_equal("Trout", fish.name)
end

end
