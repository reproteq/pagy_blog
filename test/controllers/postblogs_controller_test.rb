require 'test_helper'

class PostblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postblog = postblogs(:one)
  end

  test "should get index" do
    get postblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_postblog_url
    assert_response :success
  end

  test "should create postblog" do
    assert_difference('Postblog.count') do
      post postblogs_url, params: { postblog: { name: @postblog.name, text: @postblog.text } }
    end

    assert_redirected_to postblog_url(Postblog.last)
  end

  test "should show postblog" do
    get postblog_url(@postblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_postblog_url(@postblog)
    assert_response :success
  end

  test "should update postblog" do
    patch postblog_url(@postblog), params: { postblog: { name: @postblog.name, text: @postblog.text } }
    assert_redirected_to postblog_url(@postblog)
  end

  test "should destroy postblog" do
    assert_difference('Postblog.count', -1) do
      delete postblog_url(@postblog)
    end

    assert_redirected_to postblogs_url
  end
end
