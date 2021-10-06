require "test_helper"

class HoldingMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holding_method = holding_methods(:one)
  end

  test "should get index" do
    get holding_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_holding_method_url
    assert_response :success
  end

  test "should create holding_method" do
    assert_difference('HoldingMethod.count') do
      post holding_methods_url, params: { holding_method: { name: @holding_method.name } }
    end

    assert_redirected_to holding_method_url(HoldingMethod.last)
  end

  test "should show holding_method" do
    get holding_method_url(@holding_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_holding_method_url(@holding_method)
    assert_response :success
  end

  test "should update holding_method" do
    patch holding_method_url(@holding_method), params: { holding_method: { name: @holding_method.name } }
    assert_redirected_to holding_method_url(@holding_method)
  end

  test "should destroy holding_method" do
    assert_difference('HoldingMethod.count', -1) do
      delete holding_method_url(@holding_method)
    end

    assert_redirected_to holding_methods_url
  end
end
