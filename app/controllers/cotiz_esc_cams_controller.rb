class CotizEscCamsController < ApplicationController
  before_action :set_cotiz_esc_cam, only: [:show, :edit, :update, :destroy]

  # GET /cotiz_esc_cams
  # GET /cotiz_esc_cams.json
  def index
    @cotiz_esc_cams = CotizEscCam.all
  end

  # GET /cotiz_esc_cams/1
  # GET /cotiz_esc_cams/1.json
  def show
  end

  # GET /cotiz_esc_cams/new
  def new
    @cotiz_esc_cam = CotizEscCam.new
  end

  # GET /cotiz_esc_cams/1/edit
  def edit
  end

  # POST /cotiz_esc_cams
  # POST /cotiz_esc_cams.json
  def create
    @cotiz_esc_cam = CotizEscCam.new(cotiz_esc_cam_params)

    respond_to do |format|
      if @cotiz_esc_cam.save
        format.html { redirect_to @cotiz_esc_cam, notice: 'Cotiz esc cam was successfully created.' }
        format.json { render :show, status: :created, location: @cotiz_esc_cam }
      else
        format.html { render :new }
        format.json { render json: @cotiz_esc_cam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotiz_esc_cams/1
  # PATCH/PUT /cotiz_esc_cams/1.json
  def update
    respond_to do |format|
      if @cotiz_esc_cam.update(cotiz_esc_cam_params)
        format.html { redirect_to @cotiz_esc_cam, notice: 'Cotiz esc cam was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotiz_esc_cam }
      else
        format.html { render :edit }
        format.json { render json: @cotiz_esc_cam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotiz_esc_cams/1
  # DELETE /cotiz_esc_cams/1.json
  def destroy
    @cotiz_esc_cam.destroy
    respond_to do |format|
      format.html { redirect_to cotiz_esc_cams_url, notice: 'Cotiz esc cam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotiz_esc_cam
      @cotiz_esc_cam = CotizEscCam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotiz_esc_cam_params
      params.require(:cotiz_esc_cam).permit(:correo, :nombre)
    end
end
