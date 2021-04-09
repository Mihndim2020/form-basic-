require "test_helper"

class DriversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drivers_index_url
    assert_response :success
  end

  test "should get new" do
    get drivers_new_url
    assert_response :success
  end
end
