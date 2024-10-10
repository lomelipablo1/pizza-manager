require "test_helper"

class PizzatoppingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza = pizzas(:two)
  end

  test "should create topping for pizza" do
    assert_difference("Pizzatopping.count") do
      post pizza_path(@pizza), params: { pizzatopping: { pizza: "one", topping: "three" } }
    end
  
    assert_redirected_to pizza_path(@pizza), "Could not create pizzatopping"
  end

  setup do
    @pizza = pizzas(:one)
    @pizzatopping = pizzatoppings(:one)
  end

  test "should show topping" do
    # Reuse the @pizzatopping instance variable from setup
    get pizza_pizzatopping_url("one", "one")
    assert_response :success, "Could not show pizzatopping"
  end

  test "should destroy pizzatopping" do
    assert_difference("Pizzatopping.count", -1) do
      delete pizzatopping_url(@pizzatopping)
    end

    assert_redirected_to pizza_path, "Could not destory pizzatopping"
  end
end
