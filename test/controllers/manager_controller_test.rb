require "test_helper"

class ManagerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manager_url
    assert_response :success
  end
end
