require "test_helper"

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get businesses_index_url
    assert_response :success
  end

  test "should get show" do
    get businesses_show_url
    assert_response :success
  end

  test "should get new" do
    get businesses_new_url
    assert_response :success
  end

  test "should get edit" do
    get businesses_edit_url
    assert_response :success
  end

  test "should get update" do
    get businesses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get businesses_destroy_url
    assert_response :success
  end

  test "should get set_business" do
    get businesses_set_business_url
    assert_response :success
  end

  test "should get business_params" do
    get businesses_business_params_url
    assert_response :success
  end
end
