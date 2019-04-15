class CommentsController < ApplicationController

  def create
    u = User.find_or_create_by(username:params[:comment][:user])
    comment = Comment.create(comment_params)
    u.comments << comment
    u.save
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username, :id])
  end
end
