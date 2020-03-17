require 'test_helper'

class MagazinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get magazines_index_url
    assert_response :success
  end

  test "should get show" do
    get magazines_show_url
    assert_response :success
  end

  test "should get create" do
    get magazines_create_url
    assert_response :success
  end

  test "should get update" do
    get magazines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get magazines_destroy_url
    assert_response :success
  end

end
