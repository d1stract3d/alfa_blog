class PostsController < ApplicationController

  def show
    # byebug
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

end
