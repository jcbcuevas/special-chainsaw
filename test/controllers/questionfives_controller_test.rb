require 'test_helper'

class QuestionfivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionfife = questionfives(:one)
  end

  test "should get index" do
    get questionfives_url
    assert_response :success
  end

  test "should get new" do
    get new_questionfife_url
    assert_response :success
  end

  test "should create questionfife" do
    assert_difference('Questionfive.count') do
      post questionfives_url, params: { questionfife: {  } }
    end

    assert_redirected_to questionfife_url(Questionfive.last)
  end

  test "should show questionfife" do
    get questionfife_url(@questionfife)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionfife_url(@questionfife)
    assert_response :success
  end

  test "should update questionfife" do
    patch questionfife_url(@questionfife), params: { questionfife: {  } }
    assert_redirected_to questionfife_url(@questionfife)
  end

  test "should destroy questionfife" do
    assert_difference('Questionfive.count', -1) do
      delete questionfife_url(@questionfife)
    end

    assert_redirected_to questionfives_url
  end
end
