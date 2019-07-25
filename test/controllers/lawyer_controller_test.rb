require 'test_helper'

class LawyerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lawyer_index_url
    assert_response :success
  end

end
