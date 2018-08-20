class BambooCommentsController < ApplicationController
  def create
    @bamboo = Bamboo.find(params[:bamboo_id])
    @comment = @bamboo.bamboo_comments.create(comment_params)
    redirect_to bamboo_path(@bamboo)
  end

  def destroy
    @bamboo = Bamboo.find(params[:bamboo_id])
    @comment = @bamboo.bamboo_comments.find(params[:id])
    @comment.destroy
    redirect_to bamboo_path(@bamboo)
  end
 
  private
    def comment_params
      params.require(:bamboo_comment).permit(:commenter, :body)
    end
end