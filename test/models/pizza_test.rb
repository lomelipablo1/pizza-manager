require "test_helper"

class PizzaTest < ActiveSupport::TestCase
  test "should not save pizza without name" do
    pizza = Pizza.new
    assert_not pizza.save, "Saved the pizza without a name"
  end  

  test "should save pizza with name" do
    pizza = Pizza.new
    pizza.name = "Pablo's Pizza"
    assert pizza.save, "Saved the pizza with a name"
  end
end
