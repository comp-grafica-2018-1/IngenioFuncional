class CotizMesExpsController < ApplicationController
  before_action :set_cotiz_mes_exp, only: [:show, :edit, :update, :destroy]

  # GET /cotiz_mes_exps
  # GET /cotiz_mes_exps.json
  def index
    @cotiz_mes_exps = CotizMesExp.all
  end

  # GET /cotiz_mes_exps/1
  # GET /cotiz_mes_exps/1.json
  def show
  end

  # GET /cotiz_mes_exps/new
  def new
    @cotiz_mes_exp = CotizMesExp.new
  end

  # GET /cotiz_mes_exps/1/edit
  def edit
  end

  # POST /cotiz_mes_exps
  # POST /cotiz_mes_exps.json
  def create
    @cotiz_mes_exp = CotizMesExp.new(cotiz_mes_exp_params)

    respond_to do |format|
      if @cotiz_mes_exp.save
        format.html { redirect_to @cotiz_mes_exp, notice: 'Cotiz mes exp was successfully created.' }
        format.json { render :show, status: :created, location: @cotiz_mes_exp }
      else
        format.html { render :new }
        format.json { render json: @cotiz_mes_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotiz_mes_exps/1
  # PATCH/PUT /cotiz_mes_exps/1.json
  def update
    respond_to do |format|
      if @cotiz_mes_exp.update(cotiz_mes_exp_params)
        format.html { redirect_to @cotiz_mes_exp, notice: 'Cotiz mes exp was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotiz_mes_exp }
      else
        format.html { render :edit }
        format.json { render json: @cotiz_mes_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotiz_mes_exps/1
  # DELETE /cotiz_mes_exps/1.json
  def destroy
    @cotiz_mes_exp.destroy
    respond_to do |format|
      format.html { redirect_to cotiz_mes_exps_url, notice: 'Cotiz mes exp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotiz_mes_exp
      @cotiz_mes_exp = CotizMesExp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotiz_mes_exp_params
      params.require(:cotiz_mes_exp).permit(:correo, :nombre)
    end
end
