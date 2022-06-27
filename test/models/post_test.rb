# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post = Post.create(
      title: 'New Post',
      summary: 'Post summary',
      content: 'some text',
      image: ''
    )
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get new' do
    get 'posts#new'
    assert_response :success
  end

  test 'should show post' do
    visit post_path(@post)
    assert_response :success
  end

  test 'post should be valid' do
    assert @post.valid?
  end
end
