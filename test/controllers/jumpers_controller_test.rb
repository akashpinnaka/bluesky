require 'test_helper'

class JumpersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jumpers_index_url
    assert_response :success
  end

  test "should get show" do
    get jumpers_show_url
    assert_response :success
  end

  test "should get new" do
    get jumpers_new_url
    assert_response :success
  end

  test "should get edit" do
    get jumpers_edit_url
    assert_response :success
  end

end
