require "test_helper"

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get employee_update_url
    assert_response :success
  end
end
