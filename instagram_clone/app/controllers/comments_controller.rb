class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.commentsgi.create(comment_params)
end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end


end
