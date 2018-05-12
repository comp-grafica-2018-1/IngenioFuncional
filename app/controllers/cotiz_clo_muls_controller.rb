class CotizCloMulsController < ApplicationController
  before_action :set_cotiz_clo_mul, only: [:show, :edit, :update, :destroy]

  # GET /cotiz_clo_muls
  # GET /cotiz_clo_muls.json
  def index
    @cotiz_clo_muls = CotizCloMul.all
  end

  # GET /cotiz_clo_muls/1
  # GET /cotiz_clo_muls/1.json
  def show
  end

  # GET /cotiz_clo_muls/new
  def new
    @cotiz_clo_mul = CotizCloMul.new
  end

  # GET /cotiz_clo_muls/1/edit
  def edit
  end

  # POST /cotiz_clo_muls
  # POST /cotiz_clo_muls.json
  def create
    @cotiz_clo_mul = CotizCloMul.new(cotiz_clo_mul_params)

    respond_to do |format|
      if @cotiz_clo_mul.save
        GeneradorCorreoMailer.confirmarCotizCloMul(@cotiz_clo_mul).deliver_now
        format.html { redirect_to @cotiz_clo_mul, notice: 'Cotiz clo mul was successfully created.' }
        format.json { render :show, status: :created, location: @cotiz_clo_mul }
      else
        format.html { render :new }
        format.json { render json: @cotiz_clo_mul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotiz_clo_muls/1
  # PATCH/PUT /cotiz_clo_muls/1.json
  def update
    respond_to do |format|
      if @cotiz_clo_mul.update(cotiz_clo_mul_params)
        format.html { redirect_to @cotiz_clo_mul, notice: 'Cotiz clo mul was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotiz_clo_mul }
      else
        format.html { render :edit }
        format.json { render json: @cotiz_clo_mul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotiz_clo_muls/1
  # DELETE /cotiz_clo_muls/1.json
  def destroy
    @cotiz_clo_mul.destroy
    respond_to do |format|
      format.html { redirect_to cotiz_clo_muls_url, notice: 'Cotiz clo mul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotiz_clo_mul
      @cotiz_clo_mul = CotizCloMul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotiz_clo_mul_params
      params.require(:cotiz_clo_mul).permit(:alturaCloMul, :anchuraCloMul, :colorCloMul, :materialCloMul, :tipManijasCloMul, :numRepisasCloMul, :cantidad, :correo, :nombre)
    end
end
