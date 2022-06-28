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

  test 'post should be valid' do
    assert @post.valid?
  end
end
