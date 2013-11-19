class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(params[:post].permit(:title, :body))

    flash[:notice] = "Post saved"
    redirect_to '/posts'
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.update(params[:post].permit(:title, :body))

    flash[:notice] = "Post updated"
    redirect_to '/posts'
  end

  def show
    @post = Post.find params[:id]
  end


end
