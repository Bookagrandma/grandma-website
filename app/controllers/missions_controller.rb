class MissionsController < ApplicationController

  before_action :set_mission, only: [:show, :edit, :update, :destroy]

  # GET /missions
  # GET /missions.json
  def index
    @missions = Mission.all
  end

  # GET /missions/1
  # GET /missions/1.json
  def show
    @mission = Mission.find(params[:id])
  end

  # GET /missions/new
  def new
    @mission = Mission.new
  end

  # GET /missions/1/edit
  def edit
  end

  # POST /missions
  # POST /missions.json
  def create
    @mission = Mission.new(mission_params)
    respond_to do |format|
      if @mission.save
        MissionMailer.new_mission_b(Mission.last).deliver_now
        MissionMailer.new_mission_e(Mission.last).deliver_now
        format.html { redirect_to @mission, notice: 'Mission was successfully created.' }
        format.json { render :show, status: :created, location: @mission }
      else
        format.html { render :new }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missions/1
  # PATCH/PUT /missions/1.json
  def update
    respond_to do |format|
      if @mission.update(mission_params)
        MissionMailer.update_mission_b(Mission.last).deliver_now
        MissionMailer.update_mission_e(Mission.last).deliver_now
        format.html { redirect_to @mission, notice: 'Mission was successfully updated.' }
        format.json { render :show, status: :ok, location: @mission }
      else
        format.html { render :edit }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missions/1
  # DELETE /missions/1.json
  def destroy
    @mission.destroy
    MissionMailer.destroy_mission_b(Mission.last).deliver_now
    MissionMailer.destroy_mission_e(Mission.last).deliver_now
    respond_to do |format|
      format.html { redirect_to missions_url, notice: 'Mission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_mission
    @mission = Mission.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def mission_params
    if benevole_signed_in?
      params.require(:mission).permit(:title, :body, :place, :appointment, :benevole_id, :etablissement_id)
    else etablissement_signed_in?
      params.require(:mission).permit(:title, :body, :place, :appointment, :etablissement_id)
    end
  end
end
