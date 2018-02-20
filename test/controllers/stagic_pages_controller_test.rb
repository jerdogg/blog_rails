require 'test_helper'

class StagicPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get stagic_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get stagic_pages_about_url
    assert_response :success
  end

end
