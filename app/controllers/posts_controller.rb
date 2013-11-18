class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(params[:post].permit(:title, :body))

    flash[:notice] = "Post saved"
    redirect_to '/posts'
  end

end
