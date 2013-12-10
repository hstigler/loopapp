class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session #fixed "Can't verify CSRF token authenticity error, however not sure if this opens up security hole"
  respond_to :html, :json, :csv

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
    respond_with @rounds
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
    @rounds = Round.find(params[:id])
    respond_with @round
  end

  # GET /rounds/new
  def new
    @round = Round.new
  end

  # GET /rounds/1/edit
  def edit
    @round = Round.find(params[:id])
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new(round_params)
    @round.save
    respond_with @round
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    @round = Round.find(params[:id])
    @round.update_attributes(round_params)
    respond_with @round
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round = Round.find(params[:id])
    @round.destroy
    respond_with @round
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:identifier, :tee_id, :player_id, :course_id, :startHole, :endHole, :score)
    end
end
