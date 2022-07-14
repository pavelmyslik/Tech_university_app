require "test_helper"

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get logins_new_url
    assert_response :success
  end

  test "should get create" do
    get logins_create_url
    assert_response :success
  end

  test "should get logout" do
    get logins_logout_url
    assert_response :success
  end
end
