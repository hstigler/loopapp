class FacilitiesController < ApplicationController
  before_action :set_facility, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json
  # GET /facilities
  # GET /facilities.json
  def index
    @facilities = Facility.all
    respond_with  @facilities
  end

  # GET /facilities/1
  # GET /facilities/1.json
  def show
    @facility = Facility.find(params[:id])
    respond_with @facility
  end

  # GET /facilities/new
  def new
    @facility = Facility.new
  end

  # GET /facilities/1/edit
  def edit
    @facility = Facility.find(params[:id])
  end

  # POST /facilities
  # POST /facilities.json
  def create
    @facility = Facility.new(facility_params)
    @facility.save
    respond_with @facility
  end


  # PATCH/PUT /facilities/1
  # PATCH/PUT /facilities/1.json
  def update
    @facility = Facility.find(params[:id])
    @facility.update_attributes(facility_params)
    respond_with @facility
  end
  

  # DELETE /facilities/1
  # DELETE /facilities/1.json
  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
    respond_with @facility  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility
      @facility = Facility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_params
      params.require(:facility).permit(:identifier, :name)
    end
end
