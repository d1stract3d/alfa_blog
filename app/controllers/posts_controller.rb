class PostsController < ApplicationController

  def show
    # byebug
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    if @post.save
      flash[:notice] = 'Post submitted successfully!'
      redirect_to @post
    else
      render 'new'
    end
  end

end
