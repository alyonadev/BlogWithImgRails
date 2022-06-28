# frozen_string_literal: true
require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = Post.create(
      title: 'New Post',
      summary: 'Post summary',
      content: 'some text',
      image: ''
    )
  end

  test 'should get index' do
    get posts_url
    assert_response :success
  end

  test 'should get show' do
    get post_url(@post)
    assert_response :success
  end

  test 'should get new' do
    get new_post_url(@post)
    assert_response :success
  end

  test 'should get edit' do
    get edit_post_url(@post)
    assert_response :success
  end

  test 'should create post' do
    assert_difference('Post.count') do
      post posts_url, params: {
        post: {
          title: 'Hello',
          summary: 'create test',
          content: 'test for create'
        }
      }
    end

    assert_redirected_to post_path(Post.last)
  end
end
