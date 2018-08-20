class SponsorpostsController < ApplicationController
  before_action :set_sponsorpost, only: [:show, :edit, :update, :destroy]

  # GET /sponsorposts
  # GET /sponsorposts.json
  def index
    @sponsorposts = Sponsorpost.all
  end

  # GET /sponsorposts/1
  # GET /sponsorposts/1.json
  def show
  end

  # GET /sponsorposts/new
  def new
    @sponsorpost = Sponsorpost.new
  end

  # GET /sponsorposts/1/edit
  def edit
  end

  # POST /sponsorposts
  # POST /sponsorposts.json
  def create
    @sponsorpost = Sponsorpost.new(sponsorpost_params)

    respond_to do |format|
      if @sponsorpost.save
        format.html { redirect_to @sponsorpost, notice: 'Sponsorpost was successfully created.' }
        format.json { render :show, status: :created, location: @sponsorpost }
      else
        format.html { render :new }
        format.json { render json: @sponsorpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsorposts/1
  # PATCH/PUT /sponsorposts/1.json
  def update
    respond_to do |format|
      if @sponsorpost.update(sponsorpost_params)
        format.html { redirect_to @sponsorpost, notice: 'Sponsorpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsorpost }
      else
        format.html { render :edit }
        format.json { render json: @sponsorpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsorposts/1
  # DELETE /sponsorposts/1.json
  def destroy
    @sponsorpost.destroy
    respond_to do |format|
      format.html { redirect_to sponsorposts_url, notice: 'Sponsorpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsorpost
      @sponsorpost = Sponsorpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsorpost_params
      params.require(:sponsorpost).permit(:title, :content, :post_id)
    end
end
