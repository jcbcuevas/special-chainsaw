require 'test_helper'

class QuestionfoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionfour = questionfours(:one)
  end

  test "should get index" do
    get questionfours_url
    assert_response :success
  end

  test "should get new" do
    get new_questionfour_url
    assert_response :success
  end

  test "should create questionfour" do
    assert_difference('Questionfour.count') do
      post questionfours_url, params: { questionfour: {  } }
    end

    assert_redirected_to questionfour_url(Questionfour.last)
  end

  test "should show questionfour" do
    get questionfour_url(@questionfour)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionfour_url(@questionfour)
    assert_response :success
  end

  test "should update questionfour" do
    patch questionfour_url(@questionfour), params: { questionfour: {  } }
    assert_redirected_to questionfour_url(@questionfour)
  end

  test "should destroy questionfour" do
    assert_difference('Questionfour.count', -1) do
      delete questionfour_url(@questionfour)
    end

    assert_redirected_to questionfours_url
  end
end
