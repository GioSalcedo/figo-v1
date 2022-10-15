require "test_helper"

class EgressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get egresses_index_url
    assert_response :success
  end

  test "should get show" do
    get egresses_show_url
    assert_response :success
  end

  test "should get new" do
    get egresses_new_url
    assert_response :success
  end

  test "should get create" do
    get egresses_create_url
    assert_response :success
  end

  test "should get edit" do
    get egresses_edit_url
    assert_response :success
  end

  test "should get update" do
    get egresses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get egresses_destroy_url
    assert_response :success
  end
end
