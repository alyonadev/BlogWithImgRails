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
    assert_not_nil assigns(:posts)
  end

  test 'should get show' do
    get post_url(@post)
    assert_response :success
    assert_not_nil assigns(:post)
  end

  test 'should get new' do
    get new_post_url(@post)
    assert_response :success
    assert_not_nil assigns(:post)
  end

  test 'should get edit' do
    get edit_post_url(@post)
    assert_response :success
    assert_not_nil assigns(:post)
  end
end
