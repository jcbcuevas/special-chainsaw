require 'test_helper'

class SevensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seven = sevens(:one)
  end

  test "should get index" do
    get sevens_url
    assert_response :success
  end

  test "should get new" do
    get new_seven_url
    assert_response :success
  end

  test "should create seven" do
    assert_difference('Seven.count') do
      post sevens_url, params: { seven: {  } }
    end

    assert_redirected_to seven_url(Seven.last)
  end

  test "should show seven" do
    get seven_url(@seven)
    assert_response :success
  end

  test "should get edit" do
    get edit_seven_url(@seven)
    assert_response :success
  end

  test "should update seven" do
    patch seven_url(@seven), params: { seven: {  } }
    assert_redirected_to seven_url(@seven)
  end

  test "should destroy seven" do
    assert_difference('Seven.count', -1) do
      delete seven_url(@seven)
    end

    assert_redirected_to sevens_url
  end
end
