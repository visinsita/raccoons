class FurnituresController < ApplicationController
  before_action :set_furniture, only: [:show, :edit, :update, :destroy]

  # GET /furnitures
  # GET /furnitures.json
  def index
    @furnitures = Furniture.all
  end

  # GET /furnitures/1
  # GET /furnitures/1.json
  def show
  end

  # GET /furnitures/new
  def new
    @furniture = Furniture.new
    @raccoon = Raccoon.find(params[:raccoon_id])
  end

  # GET /furnitures/1/edit
  def edit
  end

  # POST /furnitures
  # POST /furnitures.json
  def create
    @furniture  = Furniture.create(furniture_params)
    @raccoon = Raccoon.find(@furniture.raccoon_id)
  end

  # PATCH/PUT /furnitures/1
  # PATCH/PUT /furnitures/1.json
  def update
    respond_to do |format|
      if @furniture.update(furniture_params)
        format.html { redirect_to @furniture, notice: 'Furniture was successfully updated.' }
        format.json { render :show, status: :ok, location: @furniture }
      else
        format.html { render :edit }
        format.json { render json: @furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furnitures/1
  # DELETE /furnitures/1.json
  def destroy
    @furniture.destroy
    respond_to do |format|
      format.html { redirect_to furnitures_url, notice: 'Furniture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture
      @furniture = Furniture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furniture_params
      params.require(:furniture).permit(:style, :kind, :raccoon_id)
    end
end
