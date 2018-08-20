class FreeCommentsController < ApplicationController
  def create
    @freepost = Freepost.find(params[:freepost_id])
    @comment = @freepost.free_comments.create(comment_params)
    redirect_to freepost_path(@freepost)
  end

  def destroy
    @freepost = Freepost.find(params[:freepost_id])
    @comment = @freepost.free_comments.find(params[:id])
    @comment.destroy
    redirect_to freepost_path(@freepost)
  end

  private
    def comment_params
      params.require(:free_comment).permit(:commenter, :body)
    end
end
