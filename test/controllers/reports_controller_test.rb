require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get generate_report" do
    get reports_generate_report_url
    assert_response :success
  end
end
