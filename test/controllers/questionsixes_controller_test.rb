require 'test_helper'

class QuestionsixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionsix = questionsixes(:one)
  end

  test "should get index" do
    get questionsixes_url
    assert_response :success
  end

  test "should get new" do
    get new_questionsix_url
    assert_response :success
  end

  test "should create questionsix" do
    assert_difference('Questionsix.count') do
      post questionsixes_url, params: { questionsix: {  } }
    end

    assert_redirected_to questionsix_url(Questionsix.last)
  end

  test "should show questionsix" do
    get questionsix_url(@questionsix)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionsix_url(@questionsix)
    assert_response :success
  end

  test "should update questionsix" do
    patch questionsix_url(@questionsix), params: { questionsix: {  } }
    assert_redirected_to questionsix_url(@questionsix)
  end

  test "should destroy questionsix" do
    assert_difference('Questionsix.count', -1) do
      delete questionsix_url(@questionsix)
    end

    assert_redirected_to questionsixes_url
  end
end
