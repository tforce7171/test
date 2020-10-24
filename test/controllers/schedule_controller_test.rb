require 'test_helper'

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get schedule_user_id:integer_url
    assert_response :success
  end

  test "should get calender_id:integer" do
    get schedule_calender_id:integer_url
    assert_response :success
  end

  test "should get year:integer" do
    get schedule_year:integer_url
    assert_response :success
  end

  test "should get month:integer" do
    get schedule_month:integer_url
    assert_response :success
  end

  test "should get date:integer" do
    get schedule_date:integer_url
    assert_response :success
  end

  test "should get hour:integer" do
    get schedule_hour:integer_url
    assert_response :success
  end

  test "should get min:integer" do
    get schedule_min:integer_url
    assert_response :success
  end

  test "should get impossible:integer" do
    get schedule_impossible:integer_url
    assert_response :success
  end

end
