class SponsorCommentsController < ApplicationController
  def create
    @sponsorpost = Sponsorpost.find(params[:sponsorpost_id])
    @comment = @sponsorpost.sponsor_comments.create(comment_params)
    redirect_to sponsorpost_path(@sponsorpost)
  end

  def destroy
    @sponsorpost = Sponsorpost.find(params[:sponsorpost_id])
    @comment = @sponsorpost.sponsor_comments.find(params[:id])
    @comment.destroy
    redirect_to sponsorpost_path(@sponsorpost)
  end
 
  private
    def comment_params
      params.require(:sponsor_comment).permit(:commenter, :body)
    end
end
