# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'get index' do
    it 'return a successful response' do
      get posts_path
      expect(response).to be_successful
    end
  end
end
