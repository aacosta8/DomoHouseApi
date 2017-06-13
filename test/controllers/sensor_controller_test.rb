require 'test_helper'

class SensorControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sensor_create_url
    assert_response :success
  end

  test "should get delete" do
    get sensor_delete_url
    assert_response :success
  end

  test "should get update" do
    get sensor_update_url
    assert_response :success
  end

end
