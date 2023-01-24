require "test_helper"

class FrontViewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get front_view_index_url
    assert_response :success
  end
end
