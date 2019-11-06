# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :user_only, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path
    else
      render html: 'Post is not saved'
    end
  end

  def index
    @posts = Post.all
  end

  private

  def user_only
    redirect_to login_path unless current_user
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
