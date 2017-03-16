require 'test_helper'

class NinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nine = nines(:one)
  end

  test "should get index" do
    get nines_url
    assert_response :success
  end

  test "should get new" do
    get new_nine_url
    assert_response :success
  end

  test "should create nine" do
    assert_difference('Nine.count') do
      post nines_url, params: { nine: {  } }
    end

    assert_redirected_to nine_url(Nine.last)
  end

  test "should show nine" do
    get nine_url(@nine)
    assert_response :success
  end

  test "should get edit" do
    get edit_nine_url(@nine)
    assert_response :success
  end

  test "should update nine" do
    patch nine_url(@nine), params: { nine: {  } }
    assert_redirected_to nine_url(@nine)
  end

  test "should destroy nine" do
    assert_difference('Nine.count', -1) do
      delete nine_url(@nine)
    end

    assert_redirected_to nines_url
  end
end
