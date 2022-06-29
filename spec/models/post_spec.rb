# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with valid attributes' do
    post = Post.new(title: 'Test', summary: 'Test summary', content: 'Test content')
    expect(post).to be_valid
  end
end
