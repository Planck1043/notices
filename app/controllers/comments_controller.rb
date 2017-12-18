class CommentsController < ApplicationController
  def create
    @notice = Notice.find(params[:notice_id])
    @comment = @notice.comments.create(comment_params)
    redirecto_to notice_path(@notice)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
