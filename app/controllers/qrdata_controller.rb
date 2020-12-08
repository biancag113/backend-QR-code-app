class QrdataController < ApplicationController
  before_action :set_qrdatum, only: [:show, :update, :destroy]

  # GET /qrdata
  def index
    @qrdata = Qrdatum.all

    render json: @qrdata
  end

  # GET /qrdata/1
  def show
    render json: @qrdatum
  end

  # POST /qrdata
  def create
    @qrdatum = Qrdatum.new(qrdatum_params)

    if @qrdatum.save
      render json: @qrdatum, status: :created, location: @qrdatum
    else
      render json: @qrdatum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /qrdata/1
  def update
    if @qrdatum.update(qrdatum_params)
      render json: @qrdatum
    else
      render json: @qrdatum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /qrdata/1
  def destroy
    @qrdatum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qrdatum
      @qrdatum = Qrdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qrdatum_params
      params.require(:qrdatum).permit(:vendor, :qrcode)
    end
end
