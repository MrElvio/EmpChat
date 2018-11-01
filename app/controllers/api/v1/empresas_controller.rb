class Api::V1::EmpresasController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_empresa, only: [:show, :update, :destroy]

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
    render json:@empresas
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    if @empresa.save
      render :show, status: :created, location: @empresa
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    if @empresa.update(empresa_params)
      render :show, status: :ok, location: @empresa
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:cnpj, :nome_fatasia, :setor, :endereco, :status)
    end
end
