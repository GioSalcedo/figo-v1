require "test_helper"

class BudgetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get budgets_index_url
    assert_response :success
  end

  test "should get show" do
    get budgets_show_url
    assert_response :success
  end

  test "should get new" do
    get budgets_new_url
    assert_response :success
  end

  test "should get create" do
    get budgets_create_url
    assert_response :success
  end

  test "should get edit" do
    get budgets_edit_url
    assert_response :success
  end

  test "should get update" do
    get budgets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get budgets_destroy_url
    assert_response :success
  end
end
