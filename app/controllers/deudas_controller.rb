class DeudasController < ApplicationController
  before_action :set_deuda, only: [:show, :update, :destroy]

  # GET /deudas
  def index
    @deudas = Deuda.where(usuario: params[:usuario])
    @mensaje=params[:usuario]
    @monto_deuda=Deuda.where(:tipo => 'deuda', :usuario => params[:usuario]).sum(:valor)
    @monto_haber=Deuda.where(:tipo => 'haber', :usuario => params[:usuario]).sum(:valor)

    render json: {:deudas=>@deudas, :monto_deuda=>@monto_deuda, :monto_haber=>@monto_haber, :mensaje=>@mensaje}
  end
  
  # POST /deudas/listar
  def listar
    @deudas = Deuda.where(usuario: params[:usuario])
    @mensaje=params[:usuario]
    @monto_deuda=Deuda.where(:tipo => 'deuda', :usuario => params[:usuario]).sum(:valor)
    @monto_haber=Deuda.where(:tipo => 'haber', :usuario => params[:usuario]).sum(:valor)

    render json: {:deudas=>@deudas, :monto_deuda=>@monto_deuda, :monto_haber=>@monto_haber, :mensaje=>@mensaje}
  end

  # GET /deudas/1
  def show
    render json: @deuda
  end

  # POST /deudas
  def create
    @deuda = Deuda.new(deuda_params)

    if @deuda.save
      render json: @deuda, status: :created, location: @deuda
    else
      render json: @deuda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deudas/1
  def update
    if @deuda.update(deuda_params)
      render json: @deuda
    else
      render json: @deuda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deudas/1
  def destroy
    @deuda.destroy
  end
  
  # POST /deudas/eliminar/1
  def eliminar
    #@deuda.destroy
    @deuda = Deuda.find params[:id]
    if @deuda.destroy
      render json: [mensaje: 'eliminado']
    else
      render json: [id: params[:id]]
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deuda
      @deuda = Deuda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deuda_params
      params.require(:deuda).permit(:nombre, :correo, :telefono, :valor, :interes, :descripcion, :tipo, :usuario)
    end
end
