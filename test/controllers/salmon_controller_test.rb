require 'test_helper'

class SalmonControllerTest < ActionController::TestCase
  test "should get anatomy" do
    get :anatomy
    assert_response :success
  end

  test "should get scientific" do
    get :scientific
    assert_response :success
  end

  test "should get habitat" do
    get :habitat
    assert_response :success
  end

  test "should get information" do
    get :information
    assert_response :success
  end

  test "should get behaviour" do
    get :behaviour
    assert_response :success
  end

  test "should get diet" do
    get :diet
    assert_response :success
  end

  test "should get reproduction" do
    get :reproduction
    assert_response :success
  end

end
