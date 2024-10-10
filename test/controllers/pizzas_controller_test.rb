require "test_helper"

class PizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pizzas_url
    assert_response :success
  end

  test "should create pizza" do
    assert_difference("Pizza.count") do
      post pizzas_url, params: { pizza: { name: "Pablo's Special Pizza" } }
    end
  
    assert_redirected_to pizza_path(Pizza.last)
  end

  setup do
    @pizza = pizzas(:one)
  end

  test "should show pizza" do
    # Reuse the @pizza instance variable from setup
    get pizza_url(@pizza)
    assert_response :success
  end

  test "should destroy pizza" do
    assert_difference("Pizza.count", -1) do
      delete pizza_url(@pizza)
    end

    assert_redirected_to pizzas_path
  end

  test "should update pizza" do
    patch pizza_url(@pizza), params: { pizza: { name: "updated" } }

    assert_redirected_to pizza_path(@pizza)
    # Reload association to fetch updated data and assert that name is updated.
    @pizza.reload
    assert_equal "updated", @pizza.name
  end
end
