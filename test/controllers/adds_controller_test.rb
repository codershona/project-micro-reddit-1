require 'test_helper'

class AddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add = adds(:one)
  end

  test "should get index" do
    get adds_url
    assert_response :success
  end

  test "should get new" do
    get new_add_url
    assert_response :success
  end

  test "should create add" do
    assert_difference('Add.count') do
      post adds_url, params: { add: { : @add., posts: @add.posts, posts,url: @add.posts,url, to: @add.to, url: @add.url } }
    end

    assert_redirected_to add_url(Add.last)
  end

  test "should show add" do
    get add_url(@add)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_url(@add)
    assert_response :success
  end

  test "should update add" do
    patch add_url(@add), params: { add: { : @add., posts: @add.posts, posts,url: @add.posts,url, to: @add.to, url: @add.url } }
    assert_redirected_to add_url(@add)
  end

  test "should destroy add" do
    assert_difference('Add.count', -1) do
      delete add_url(@add)
    end

    assert_redirected_to adds_url
  end
end
