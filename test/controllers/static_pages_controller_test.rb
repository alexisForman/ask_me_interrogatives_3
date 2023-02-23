require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get static_pages_welcome_url
    assert_response :success
  end

  test "should get rules" do
    get static_pages_rules_url
    assert_response :success
  end

  test "should get disclaimer" do
    get static_pages_disclaimer_url
    assert_response :success
  end
end
