require 'test_helper'

class NopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nope = nopes(:one)
  end

  test "should get index" do
    get nopes_url
    assert_response :success
  end

  test "should get new" do
    get new_nope_url
    assert_response :success
  end

  test "should create nope" do
    assert_difference('Nope.count') do
      post nopes_url, params: { nope: {  } }
    end

    assert_redirected_to nope_url(Nope.last)
  end

  test "should show nope" do
    get nope_url(@nope)
    assert_response :success
  end

  test "should get edit" do
    get edit_nope_url(@nope)
    assert_response :success
  end

  test "should update nope" do
    patch nope_url(@nope), params: { nope: {  } }
    assert_redirected_to nope_url(@nope)
  end

  test "should destroy nope" do
    assert_difference('Nope.count', -1) do
      delete nope_url(@nope)
    end

    assert_redirected_to nopes_url
  end
end
