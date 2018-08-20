class GradCommentsController < ApplicationController
  def create
    @graduate = Graduate.find(params[:graduate_id])
    @comment = @graduate.grad_comments.create(comment_params)
    redirect_to graduate_path(@graduate)
  end

  def destroy
    @graduate = Graduate.find(params[:graduate_id])
    @comment = @graduate.grad_comments.find(params[:id])
    @comment.destroy
    redirect_to graduate_path(@graduate)
  end
 
  private
    def comment_params
      params.require(:grad_comment).permit(:commenter, :body)
    end
end
