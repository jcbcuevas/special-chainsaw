require 'test_helper'

class CongratsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congrat = congrats(:one)
  end

  test "should get index" do
    get congrats_url
    assert_response :success
  end

  test "should get new" do
    get new_congrat_url
    assert_response :success
  end

  test "should create congrat" do
    assert_difference('Congrat.count') do
      post congrats_url, params: { congrat: {  } }
    end

    assert_redirected_to congrat_url(Congrat.last)
  end

  test "should show congrat" do
    get congrat_url(@congrat)
    assert_response :success
  end

  test "should get edit" do
    get edit_congrat_url(@congrat)
    assert_response :success
  end

  test "should update congrat" do
    patch congrat_url(@congrat), params: { congrat: {  } }
    assert_redirected_to congrat_url(@congrat)
  end

  test "should destroy congrat" do
    assert_difference('Congrat.count', -1) do
      delete congrat_url(@congrat)
    end

    assert_redirected_to congrats_url
  end
end
