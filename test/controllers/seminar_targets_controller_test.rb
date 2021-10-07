require "test_helper"

class SeminarTargetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seminar_target = seminar_targets(:one)
  end

  test "should get index" do
    get seminar_targets_url
    assert_response :success
  end

  test "should get new" do
    get new_seminar_target_url
    assert_response :success
  end

  test "should create seminar_target" do
    assert_difference("SeminarTarget.count") do
      post seminar_targets_url, params: { seminar_target: { name: @seminar_target.name } }
    end

    assert_redirected_to seminar_target_url(SeminarTarget.last)
  end

  test "should show seminar_target" do
    get seminar_target_url(@seminar_target)
    assert_response :success
  end

  test "should get edit" do
    get edit_seminar_target_url(@seminar_target)
    assert_response :success
  end

  test "should update seminar_target" do
    patch seminar_target_url(@seminar_target), params: { seminar_target: { name: @seminar_target.name } }
    assert_redirected_to seminar_target_url(@seminar_target)
  end

  test "should destroy seminar_target" do
    assert_difference("SeminarTarget.count", -1) do
      delete seminar_target_url(@seminar_target)
    end

    assert_redirected_to seminar_targets_url
  end
end
