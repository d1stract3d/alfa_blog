class PostsController < ApplicationController

  def show
    # byebug
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new

  end


  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    @post.save
    redirect_to @post
  end

end
