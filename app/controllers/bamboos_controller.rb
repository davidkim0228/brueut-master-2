class BamboosController < ApplicationController
  before_action :set_bamboo, only: [:show, :edit, :update, :destroy]

  # GET /bamboos
  # GET /bamboos.json
  def index
    @bamboos = Bamboo.all
  end

  # GET /bamboos/1
  # GET /bamboos/1.json
  def show
  end

  # GET /bamboos/new
  def new
    @bamboo = Bamboo.new
  end

  # GET /bamboos/1/edit
  def edit
  end

  # POST /bamboos
  # POST /bamboos.json
  def create
    @bamboo = Bamboo.new(bamboo_params)

    respond_to do |format|
      if @bamboo.save
        format.html { redirect_to @bamboo, notice: 'Bamboo was successfully created.' }
        format.json { render :show, status: :created, location: @bamboo }
      else
        format.html { render :new }
        format.json { render json: @bamboo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bamboos/1
  # PATCH/PUT /bamboos/1.json
  def update
    respond_to do |format|
      if @bamboo.update(bamboo_params)
        format.html { redirect_to @bamboo, notice: 'Bamboo was successfully updated.' }
        format.json { render :show, status: :ok, location: @bamboo }
      else
        format.html { render :edit }
        format.json { render json: @bamboo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bamboos/1
  # DELETE /bamboos/1.json
  def destroy
    @bamboo.destroy
    respond_to do |format|
      format.html { redirect_to bamboos_url, notice: 'Bamboo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bamboo
      @bamboo = Bamboo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bamboo_params
      params.require(:bamboo).permit(:title, :content, :post_id)
    end
end
