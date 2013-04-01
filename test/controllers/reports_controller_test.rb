require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get tmp" do
    get :tmp
    assert_response :success
  end

end
