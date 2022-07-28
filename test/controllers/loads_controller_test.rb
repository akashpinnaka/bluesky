require 'test_helper'

class LoadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loads_index_url
    assert_response :success
  end

  test "should get show" do
    get loads_show_url
    assert_response :success
  end

  test "should get new" do
    get loads_new_url
    assert_response :success
  end

  test "should get edit" do
    get loads_edit_url
    assert_response :success
  end

end
