class MarketCommentsController < ApplicationController
  def create
    @market = Market.find(params[:market_id])
    @comment = @market.market_comments.create(comment_params)
    redirect_to market_path(@market)
  end

  def destroy
    @market = Market.find(params[:market_id])
    @comment = @market.market_comments.find(params[:id])
    @comment.destroy
    redirect_to market_path(@market)
  end
 
  private
    def comment_params
      params.require(:market_comment).permit(:commenter, :body)
    end
end
