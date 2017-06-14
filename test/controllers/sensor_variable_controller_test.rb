require 'test_helper'

class SensorVariableControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get sensor_variable_list_url
    assert_response :success
  end

  test "should get create" do
    get sensor_variable_create_url
    assert_response :success
  end

end
