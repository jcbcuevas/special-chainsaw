require 'test_helper'

class QuestionthreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionthree = questionthrees(:one)
  end

  test "should get index" do
    get questionthrees_url
    assert_response :success
  end

  test "should get new" do
    get new_questionthree_url
    assert_response :success
  end

  test "should create questionthree" do
    assert_difference('Questionthree.count') do
      post questionthrees_url, params: { questionthree: {  } }
    end

    assert_redirected_to questionthree_url(Questionthree.last)
  end

  test "should show questionthree" do
    get questionthree_url(@questionthree)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionthree_url(@questionthree)
    assert_response :success
  end

  test "should update questionthree" do
    patch questionthree_url(@questionthree), params: { questionthree: {  } }
    assert_redirected_to questionthree_url(@questionthree)
  end

  test "should destroy questionthree" do
    assert_difference('Questionthree.count', -1) do
      delete questionthree_url(@questionthree)
    end

    assert_redirected_to questionthrees_url
  end
end
