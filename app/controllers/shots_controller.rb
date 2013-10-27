class ShotsController < ApplicationController
  before_action :set_shot, only: [:show, :edit, :update, :destroy]

  # GET /shots
  # GET /shots.json
  def index
    @shots = Shot.all
  end

  # GET /shots/1
  # GET /shots/1.json
  def show
  end

  # GET /shots/new
  def new
    @shot = Shot.new
  end

  # GET /shots/1/edit
  def edit
  end

  # POST /shots
  # POST /shots.json
  def create
    @shot = Shot.new(shot_params)

    respond_to do |format|
      if @shot.save
        format.html { redirect_to @shot, notice: 'Shot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shot }
      else
        format.html { render action: 'new' }
        format.json { render json: @shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shots/1
  # PATCH/PUT /shots/1.json
  def update
    respond_to do |format|
      if @shot.update(shot_params)
        format.html { redirect_to @shot, notice: 'Shot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shots/1
  # DELETE /shots/1.json
  def destroy
    @shot.destroy
    respond_to do |format|
      format.html { redirect_to shots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shot
      @shot = Shot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shot_params
      params.require(:shot).permit(:identifier, :startLat, :startLon, :endLat, :endLon, :score, :lie, :time)
    end
end
