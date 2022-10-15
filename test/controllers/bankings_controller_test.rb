require "test_helper"

class BankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bankings_index_url
    assert_response :success
  end

  test "should get show" do
    get bankings_show_url
    assert_response :success
  end

  test "should get new" do
    get bankings_new_url
    assert_response :success
  end

  test "should get create" do
    get bankings_create_url
    assert_response :success
  end

  test "should get edit" do
    get bankings_edit_url
    assert_response :success
  end

  test "should get update" do
    get bankings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bankings_destroy_url
    assert_response :success
  end
end
