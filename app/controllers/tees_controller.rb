class TeesController < ApplicationController
  before_action :set_tee, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json

  # GET /tees
  # GET /tees.json
  def index
    @tees = Tee.all
    respond_with @tees
  end

  # GET /tees/1
  # GET /tees/1.json
  def show
    @tee = Tee.find(params[:id])
    respond_with @tee
  end

  # GET /tees/new
  def new
    @tee = Tee.new
  end

  # GET /tees/1/edit
  def edit
    @tee = Tee.find(params[:id])
  end

  # POST /tees
  # POST /tees.json
  def create
    @tee = Tee.new(tee_params)
    @tee.save
    respond_with @tee
  end

  # PATCH/PUT /tees/1
  # PATCH/PUT /tees/1.json
  def update
    @tee = Tee.find(params[:id])
    @tee.update_attributes(tee_params)
    respond_with @tee
  end

  # DELETE /tees/1
  # DELETE /tees/1.json
  def destroy
    @tee = Tee.find(params[:id])
    @tee.destroy
    respond_with @tee
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tee
      @tee = Tee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tee_params
      params.require(:tee).permit(:identifier, :name, :distance, :courseRating, :slopeRating)
    end
end
