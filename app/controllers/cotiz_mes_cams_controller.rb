class CotizMesCamsController < ApplicationController
  before_action :set_cotiz_mes_cam, only: [:show, :edit, :update, :destroy]

  # GET /cotiz_mes_cams
  # GET /cotiz_mes_cams.json
  def index
    @cotiz_mes_cams = CotizMesCam.all
  end

  # GET /cotiz_mes_cams/1
  # GET /cotiz_mes_cams/1.json
  def show
  end

  # GET /cotiz_mes_cams/new
  def new
    @cotiz_mes_cam = CotizMesCam.new
  end

  # GET /cotiz_mes_cams/1/edit
  def edit
  end

  # POST /cotiz_mes_cams
  # POST /cotiz_mes_cams.json
  def create
    @cotiz_mes_cam = CotizMesCam.new(cotiz_mes_cam_params)

    respond_to do |format|
      if @cotiz_mes_cam.save
        format.html { redirect_to @cotiz_mes_cam, notice: 'Cotiz mes cam was successfully created.' }
        format.json { render :show, status: :created, location: @cotiz_mes_cam }
      else
        format.html { render :new }
        format.json { render json: @cotiz_mes_cam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotiz_mes_cams/1
  # PATCH/PUT /cotiz_mes_cams/1.json
  def update
    respond_to do |format|
      if @cotiz_mes_cam.update(cotiz_mes_cam_params)
        format.html { redirect_to @cotiz_mes_cam, notice: 'Cotiz mes cam was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotiz_mes_cam }
      else
        format.html { render :edit }
        format.json { render json: @cotiz_mes_cam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotiz_mes_cams/1
  # DELETE /cotiz_mes_cams/1.json
  def destroy
    @cotiz_mes_cam.destroy
    respond_to do |format|
      format.html { redirect_to cotiz_mes_cams_url, notice: 'Cotiz mes cam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotiz_mes_cam
      @cotiz_mes_cam = CotizMesCam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotiz_mes_cam_params
      params.require(:cotiz_mes_cam).permit(:correo, :nombre)
    end
end
