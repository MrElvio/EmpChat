class Api::V1::ContactosController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_contacto, only: [:show, :update, :destroy]

  # GET /contactos
  # GET /contactos.json
  def index
    @contactos = Contacto.all
    render json:@contactos
  end

  # GET /contactos/1
  # GET /contactos/1.json
  def show
  end

  # POST /contactos
  # POST /contactos.json
  def create
    @contacto = Contacto.new(contacto_params)

    if @contacto.save
      render :show, status: :created, location: @contacto
    else
      render json: @contacto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contactos/1
  # PATCH/PUT /contactos/1.json
  def update
    if @contacto.update(contacto_params)
      render :show, status: :ok, location: @contacto
    else
      render json: @contacto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contactos/1
  # DELETE /contactos/1.json
  def destroy
    @contacto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacto_params
      params.require(:contacto).permit(:email, :telefone, :celular, :cliente_id)
    end
end
