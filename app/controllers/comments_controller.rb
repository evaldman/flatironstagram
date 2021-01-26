class CommentsController < ApplicationController
  
  def new
    @new_comment = Comment.new
  end

  def create
    new_comment = Comment.create(comment_params)
    redirect_to picture_path(new_comment.picture_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :picture_id, :user_id)
  end

end
