require 'test_helper'

class EightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eight = eights(:one)
  end

  test "should get index" do
    get eights_url
    assert_response :success
  end

  test "should get new" do
    get new_eight_url
    assert_response :success
  end

  test "should create eight" do
    assert_difference('Eight.count') do
      post eights_url, params: { eight: {  } }
    end

    assert_redirected_to eight_url(Eight.last)
  end

  test "should show eight" do
    get eight_url(@eight)
    assert_response :success
  end

  test "should get edit" do
    get edit_eight_url(@eight)
    assert_response :success
  end

  test "should update eight" do
    patch eight_url(@eight), params: { eight: {  } }
    assert_redirected_to eight_url(@eight)
  end

  test "should destroy eight" do
    assert_difference('Eight.count', -1) do
      delete eight_url(@eight)
    end

    assert_redirected_to eights_url
  end
end
