class PistasController < ApplicationController
  before_action :set_pista, only: [:show, :edit, :update, :destroy]

  # GET /pistas
  # GET /pistas.json
  def index
    @pistas = Pista.all
  end

  # GET /pistas/1
  # GET /pistas/1.json
  def show
  end

  # GET /pistas/new
  def new
    @pista = Pista.new
  end

  # GET /pistas/1/edit
  def edit
  end

  # POST /pistas
  # POST /pistas.json
  def create
    @pista = Pista.new(pista_params)

    respond_to do |format|
      if @pista.save
        format.html { redirect_to @pista, notice: 'Pista was successfully created.' }
        format.json { render :show, status: :created, location: @pista }
      else
        format.html { render :new }
        format.json { render json: @pista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pistas/1
  # PATCH/PUT /pistas/1.json
  def update
    respond_to do |format|
      if @pista.update(pista_params)
        format.html { redirect_to @pista, notice: 'Pista was successfully updated.' }
        format.json { render :show, status: :ok, location: @pista }
      else
        format.html { render :edit }
        format.json { render json: @pista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pistas/1
  # DELETE /pistas/1.json
  def destroy
    @pista.destroy
    respond_to do |format|
      format.html { redirect_to pistas_url, notice: 'Pista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pista
      @pista = Pista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pista_params
      params.require(:pista).permit(:numero, :localizacao, :pontos)
    end
end
