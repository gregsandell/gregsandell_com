require 'test_helper'

class MainPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get resume" do
    get :resume
    assert_response :success
  end

  test "should get code" do
    get :code
    assert_response :success
  end

  test "should get talks" do
    get :talks
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
