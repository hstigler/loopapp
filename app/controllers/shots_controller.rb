class ShotsController < ApplicationController
  before_action :set_shot, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json, :csv

  # GET /shots
  # GET /shots.json
  def index
    @shots = Shot.all
    respond_with @shots
  end

  # GET /shots/1
  # GET /shots/1.json
  def show
    @shot = Shot.find(params[:id])
    respond_with @shot
  end

  # GET /shots/new
  def new
    @shot = Shot.new
  end

  # GET /shots/1/edit
  def edit
    @shot = Shot.find(params[:id])
  end

  # POST /shots
  # POST /shots.json
  def create
    @shot = Shot.new(shot_params)
    @shot.save
    respond_with @shot
  end

  # PATCH/PUT /shots/1
  # PATCH/PUT /shots/1.json
  def update
    @shot = Shot.find(params[:id])
    @shot.update_attributes(shot_params)
    respond_with @shot
  end

  # DELETE /shots/1
  # DELETE /shots/1.json
  def destroy
    @shot = Shot.find(params[:id])
    @shot.destroy
    respond_with @shot
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shot
      @shot = Shot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shot_params
      params.require(:shot).permit(:identifier, :club_id, :round_hole_id, :startLat, :startLon, :endLat, :endLon, :score, :lie, :time)
    end
end
