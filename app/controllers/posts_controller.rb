# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, success: 'Post successfully added'
    else
      render :new, danger: 'Post not added'
    end
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post, success: 'Post successfully updated'
    else
      render :edit, danger: 'Post not updated'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: 'Post successfully removed'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :summary, :content, :image)
  end
end
