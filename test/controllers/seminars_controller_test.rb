require "test_helper"

class SeminarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seminar = seminars(:one)
  end

  test "should get index" do
    get seminars_url
    assert_response :success
  end

  test "should get new" do
    get new_seminar_url
    assert_response :success
  end

  test "should create seminar" do
    assert_difference('Seminar.count') do
      post seminars_url, params: { seminar: { appeal: @seminar.appeal, course_fee: @seminar.course_fee, datetime_of_the_seminar: @seminar.datetime_of_the_seminar, description: @seminar.description, feedback: @seminar.feedback, holding_method_id: @seminar.holding_method_id, lecturer_profiles: @seminar.lecturer_profiles, manual_link: @seminar.manual_link, pdf: @seminar.pdf, preparation: @seminar.preparation, program: @seminar.program, recommend: @seminar.recommend, target_id: @seminar.target_id, thumbnail: @seminar.thumbnail, thumbnail_mime_type: @seminar.thumbnail_mime_type, title: @seminar.title } }
    end

    assert_redirected_to seminar_url(Seminar.last)
  end

  test "should show seminar" do
    get seminar_url(@seminar)
    assert_response :success
  end

  test "should get edit" do
    get edit_seminar_url(@seminar)
    assert_response :success
  end

  test "should update seminar" do
    patch seminar_url(@seminar), params: { seminar: { appeal: @seminar.appeal, course_fee: @seminar.course_fee, datetime_of_the_seminar: @seminar.datetime_of_the_seminar, description: @seminar.description, feedback: @seminar.feedback, holding_method_id: @seminar.holding_method_id, lecturer_profiles: @seminar.lecturer_profiles, manual_link: @seminar.manual_link, pdf: @seminar.pdf, preparation: @seminar.preparation, program: @seminar.program, recommend: @seminar.recommend, target_id: @seminar.target_id, thumbnail: @seminar.thumbnail, thumbnail_mime_type: @seminar.thumbnail_mime_type, title: @seminar.title } }
    assert_redirected_to seminar_url(@seminar)
  end

  test "should destroy seminar" do
    assert_difference('Seminar.count', -1) do
      delete seminar_url(@seminar)
    end

    assert_redirected_to seminars_url
  end
end
