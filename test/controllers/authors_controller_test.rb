require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authors_index_url
    assert_response :success
  end

  test "should get show" do
    get authors_show_url
    assert_response :success
  end

  test "should get create" do
    get authors_create_url
    assert_response :success
  end
end
