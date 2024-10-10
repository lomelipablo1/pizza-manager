require "test_helper"

class ToppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppings_url
    assert_response :success
  end

  test "should create topping" do
    assert_difference("Topping.count") do
      post toppings_url, params: { topping: { name: "New Topping" } }
    end
  
    assert_redirected_to topping_path(Topping.last)
  end

  setup do
    @topping = toppings(:one)
  end

  test "should show topping" do
    # Reuse the @topping instance variable from setup
    get topping_url(@topping)
    assert_response :success
  end

  test "should destroy topping" do
    assert_difference("Topping.count", -1) do
      delete topping_url(@topping)
    end

    assert_redirected_to toppings_path
  end

  test "should update topping" do
    patch topping_url(@topping), params: { topping: { name: "updated" } }

    assert_redirected_to topping_path(@topping)
    # Reload association to fetch updated data and assert that name is updated.
    @topping.reload
    assert_equal "updated", @topping.name
  end
end
