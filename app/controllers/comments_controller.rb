class CommentsController < ApplicationController

  def create
    @post = Post.find params[:post_id]
    @post.comments.create(params[:comment].permit(:body))

    redirect_to @post
  end

end
