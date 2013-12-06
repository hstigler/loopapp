class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json


  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
    respond_with @clubs, :include => :id
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
    @club = Club.find(params[:id])
    respond_with @club, :include => :id
  end

  # GET /clubs/new
  def new
    @club = Club.new
  end

  # GET /clubs/1/edit
  def edit
    @club = Club.find(params[:id])
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)
    @club.save
    respond_with @club
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
   @club = Club.find(params[:id])
   @club.update_attributes(club_params)
   respond_with @club
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    respond_with @club
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:identifier, :player_id, :make, :model, :order, :name)
    end
end
