require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_menu" do
    get admin_admin_menu_url
    assert_response :success
  end
end
