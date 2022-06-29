# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'is valid attributes' do
    it 'valid all attributes' do
      post = Post.new(title: 'Test', summary: 'Test summary', content: 'Test content')
      expect(post).to be_valid
    end

    it 'valid without summary' do
      post = Post.new(title: 'Test', content: 'Test content')
      expect(post).to be_valid
    end
  end

  describe 'is not valid with attributes' do
    it 'is not valid without title' do
      post = Post.new(summary: 'Test summary', content: 'Test content')
      expect(post).to_not be_valid
    end

    it 'is not valid without content' do
      post = Post.new(title: 'Test', summary: 'Test summary')
      expect(post).to_not be_valid
    end

    it 'is not valid without dates' do
      post = Post.new
      expect(post).to_not be_valid
    end
  end

  describe 'CRUD' do
    before :all do
      @post = Post.create!(
        title: 'New Post',
        summary: 'Post summary',
        content: 'some text',
        image: ''
      )
    end

    it 'create post' do
      expect(@post).to be_valid
    end

    it 'read post' do
      expect(Post.find_by_title('New Post')).to eq(@post)
    end

    it 'update post' do
      @post.update(title: 'New Post - after update')
      expect(Post.find_by_title('New Post - after update')).to eq(@post)
    end

    it 'destroy post' do
      @post.delete
      expect(Post.find_by(title: 'New Post - after update')).to be_nil
    end
  end
end
