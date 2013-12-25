class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json, :csv


  # GET /players
  # GET /players.json
  def index
    @players = Player.all
    respond_with @players
  end

  # GET /players/1
  # GET /players/1.json
  def show
    @player = Player.find(params[:id])
    respond_with @player
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)
    @player.save
    respond_with @player
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    @player = Player.find(params[:id])
    @player.update_attributes(player_params)
    respond_with @player
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    respond_with @player
  end

  #Import CSV
  def import
    Player.import(params[:file])
    redirect_to root_url, alert: "Players Imported"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:identifier, :firstName, :lastName, :handicap)
    end
end

