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
end
