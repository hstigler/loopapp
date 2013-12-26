class RoundHolesController < ApplicationController
  before_action :set_round_hole, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json, :csv

  # GET /round_holes
  # GET /round_holes.json
  def index
    @round_holes = RoundHole.all
    respond_with @round_holes
  end

  # GET /round_holes/1
  # GET /round_holes/1.json
  def show
    @round_hole = RoundHole.find(params[:id])
    respond_with @round_hole
  end

  # GET /round_holes/new
  def new
    @round_hole = RoundHole.new
  end

  # GET /round_holes/1/edit
  def edit
   @round_hole = RoundHole.find(params[:id])
  end

  # POST /round_holes
  # POST /round_holes.json
  def create
    @round_hole = RoundHole.new(round_hole_params)
    @round_hole.save
    respond_with @round_hole    
  end

  # PATCH/PUT /round_holes/1
  # PATCH/PUT /round_holes/1.json
  def update
    @round_hole = RoundHole.find(params[:id])
    @round_hole.update_attributes(round_hole_params)
    respond_with @round_hole
  end

  # DELETE /round_holes/1
  # DELETE /round_holes/1.json
  def destroy
    @round_hole = RoundHole.find(params[:id])
    @round_hole.destroy
    respond_with @round_hole    
  end

  #Import CSV
  def import
    RoundHole.import(params[:file])
    redirect_to root_url, alert: "Round Holes Imported"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round_hole
      @round_hole = RoundHole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_hole_params
      params.require(:round_hole).permit(:round_id, :hole_id)
    end
end
