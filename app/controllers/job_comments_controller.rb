class JobCommentsController < ApplicationController
  def create
    @jobpost = Jobpost.find(params[:jobpost_id])
    @comment = @jobpost.job_comments.create(comment_params)
    redirect_to jobpost_path(@jobpost)
  end

  def destroy
    @jobpost = Jobpost.find(params[:jobpost_id])
    @comment = @jobpost.job_comments.find(params[:id])
    @comment.destroy
    redirect_to jobpost_path(@jobpost)
  end
 
  private
    def comment_params
      params.require(:job_comment).permit(:commenter, :body)
    end
end