class Api::V1::CabinesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_cabine, only: [:show, :update, :destroy]

  # GET /cabines
  # GET /cabines.json
  def index
    @cabines = Cabine.all
    render json: @cabines
  end

  # GET /cabines/1
  # GET /cabines/1.json
  def show
  end

  # POST /cabines
  # POST /cabines.json
  def create
    @cabine = Cabine.new(cabine_params)

    if @cabine.save
      render :show, status: :created, location: @cabine
    else
      render json: @cabine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cabines/1
  # PATCH/PUT /cabines/1.json
  def update
    if @cabine.update(cabine_params)
      render :show, status: :ok, location: @cabine
    else
      render json: @cabine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cabines/1
  # DELETE /cabines/1.json
  def destroy
    @cabine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabine
      @cabine = Cabine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabine_params
      params.require(:cabine).permit(:cod, :empresa_id)
    end
end
