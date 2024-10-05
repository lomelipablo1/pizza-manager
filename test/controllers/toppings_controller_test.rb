require "test_helper"

class ToppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppings_index_url
    assert_response :success
  end
end
