require 'test_helper'

class DiscussionsControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get push" do
    get :push
    assert_response :success
  end

  test "should get pop" do
    get :pop
    assert_response :success
  end

end
