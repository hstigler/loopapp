class HolesController < ApplicationController
  before_action :set_hole, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json, :csv

  # GET /holes
  # GET /holes.json
  def index
    @holes = Hole.all
    respond_with @holes
  end

  # GET /holes/1
  # GET /holes/1.json
  def show
    @hole = Hole.find(params[:id])
    respond_with  @hole
  end

  # GET /holes/new
  def new
    @hole = Hole.new
  end

  # GET /holes/1/edit
  def edit
    @hole = Hole.find(params[:id])
  end

  # POST /holes
  # POST /holes.json
  def create
    @hole = Hole.new(hole_params)
    @hole.save
    respond_with @hole  
  end

  # PATCH/PUT /holes/1
  # PATCH/PUT /holes/1.json
  def update
    @hole = Hole.find(params[:id])
    @hole.update_attributes(hole_params)
    respond_with @hole
  end

  # DELETE /holes/1
  # DELETE /holes/1.json
  def destroy
    @hole = Hole.find(params[:id])
    @hole.destroy
    respond_with @hole
  end

  #Import CSV
  def import
    Hole.import(params[:file])
    redirect_to root_url, alert: "Holes Imported"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hole
      @hole = Hole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hole_params
      params.require(:hole).permit(:identifier, :facility_id, :number, :par, :handicap)
    end
end
