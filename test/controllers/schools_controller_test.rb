require "test_helper"

class SchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schools_index_url
    assert_response :success
  end

  test "should get create" do
    get schools_create_url
    assert_response :success
  end
end
