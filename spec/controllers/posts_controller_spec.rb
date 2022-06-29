# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  before :all do
    @post = Post.create!(
      title: 'New Post',
      summary: 'Post summary',
      content: 'some text',
      image: ''
    )
  end

  describe 'return a successful response' do
    it 'get index' do
      get posts_path
      expect(response).to be_successful
    end

    it 'get show' do
      get post_path(@post)
      expect(response).to be_successful
    end

    it 'get edit' do
      get post_path(@post)
      expect(response).to be_successful
    end

    it 'get new' do
      get new_post_path
      expect(response).to be_successful
    end
  end
end
