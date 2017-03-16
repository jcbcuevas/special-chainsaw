require 'test_helper'

class TensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ten = tens(:one)
  end

  test "should get index" do
    get tens_url
    assert_response :success
  end

  test "should get new" do
    get new_ten_url
    assert_response :success
  end

  test "should create ten" do
    assert_difference('Ten.count') do
      post tens_url, params: { ten: {  } }
    end

    assert_redirected_to ten_url(Ten.last)
  end

  test "should show ten" do
    get ten_url(@ten)
    assert_response :success
  end

  test "should get edit" do
    get edit_ten_url(@ten)
    assert_response :success
  end

  test "should update ten" do
    patch ten_url(@ten), params: { ten: {  } }
    assert_redirected_to ten_url(@ten)
  end

  test "should destroy ten" do
    assert_difference('Ten.count', -1) do
      delete ten_url(@ten)
    end

    assert_redirected_to tens_url
  end
end
