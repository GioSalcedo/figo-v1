require "test_helper"

class EarningsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get earnings_index_url
    assert_response :success
  end

  test "should get show" do
    get earnings_show_url
    assert_response :success
  end

  test "should get new" do
    get earnings_new_url
    assert_response :success
  end

  test "should get create" do
    get earnings_create_url
    assert_response :success
  end

  test "should get edit" do
    get earnings_edit_url
    assert_response :success
  end

  test "should get update" do
    get earnings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get earnings_destroy_url
    assert_response :success
  end
end
