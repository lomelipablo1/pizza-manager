require "test_helper"

class ToppingTest < ActiveSupport::TestCase
  test "should not save topping without name" do
    topping = Topping.new
    assert_not topping.save, "Saved the topping without a name"
  end  

  test "should save topping with name" do
    topping = Topping.new
    topping.name = "topping3"
    assert topping.save, "Saved the topping with a name"
  end
end
