require "test_helper"

class DebtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get debts_index_url
    assert_response :success
  end

  test "should get show" do
    get debts_show_url
    assert_response :success
  end

  test "should get new" do
    get debts_new_url
    assert_response :success
  end

  test "should get create" do
    get debts_create_url
    assert_response :success
  end

  test "should get edit" do
    get debts_edit_url
    assert_response :success
  end

  test "should get update" do
    get debts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get debts_destroy_url
    assert_response :success
  end
end
