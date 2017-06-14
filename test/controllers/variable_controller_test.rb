require 'test_helper'

class VariableControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get variable_list_url
    assert_response :success
  end

  test "should get create" do
    get variable_create_url
    assert_response :success
  end

  test "should get update" do
    get variable_update_url
    assert_response :success
  end

  test "should get delete" do
    get variable_delete_url
    assert_response :success
  end

end
