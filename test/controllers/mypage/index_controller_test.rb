require "test_helper"

class Mypage::IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mypage_index_index_url
    assert_response :success
  end
end
