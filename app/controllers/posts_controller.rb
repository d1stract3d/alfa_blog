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

  def edit
    # byebug
    @post = Post.find(params[:id])
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

  def update
    # byebug
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :body))
      flash[:notice] = 'Post was updated successfully!'
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

end
