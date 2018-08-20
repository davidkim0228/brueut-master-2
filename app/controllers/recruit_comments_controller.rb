class RecruitCommentsController < ApplicationController
  def create
    @recruit = Recruit.find(params[:recruit_id])
    @comment = @recruit.recruit_comments.create(comment_params)
    redirect_to recruit_path(@recruit)
  end

  def destroy
    @recruit = Recruit.find(params[:recruit_id])
    @comment = @recruit.recruit_comments.find(params[:id])
    @comment.destroy
    redirect_to recruit_path(@recruit)
  end
 
  private
    def comment_params
      params.require(:recruit_comment).permit(:commenter, :body)
    end
end
