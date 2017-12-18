class MissionsController < ApplicationController

  before_action :set_mission, only: [:show, :edit, :update, :destroy]
  #before_action :find_etablissement

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
    @etablissement = Etablissement.find(params[:etablissement_id]) 
    @mission = @etablissement.missions.new
    

    #@etablissement = Etablissement.where(etablissement_id: @etablissement)
    #@mission = @etablissement
   #@etablissement = Etablissement.find(params[:id])
    #@mission = Mission.new
    #@missions = Mission.where(etablissement_id: @etablissement).order("created_at DESC")

#@mission = Mission.new
 #   #@etablissement = Etablissement.find(params[:id])
    
  #  #@etablissement = Etablissement.where(etablissement_id: @etablissement)



  end

  # GET /missions/1/edit
  def edit
    @mission = Mission.find(params[:id])
  end

  # POST /missions
  # POST /missions.json


  def create

    @etablissement = Etablissement.find(params[:etablissement_id]) 
    @mission = @etablissement.missions.new(mission_params)

    @mission.benevole = current_benevole
    #@etablissement = Etablissement.find(params[:id])

    respond_to do |format|
      @mission.save
      if @mission.save
        MissionMailer.new_mission_b(Mission.last).deliver_now
        MissionMailer.new_mission_e(Mission.last).deliver_now
        format.html { redirect_to @etablissement, notice: 'La Proposition a bien été crée.' }
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
        format.html { redirect_to @mission.etablissement, notice: 'La Proposition a bien été modifiée.' }
        format.json { render :show, status: :ok, location: @mission.etablissement }
      else
        format.html { render :edit }
        format.json { render json: @mission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missions/1
  # DELETE /missions/1.json
  def destroy
    MissionMailer.destroy_mission_b(Mission.find(params[:id])).deliver_now
    MissionMailer.destroy_mission_e(Mission.find(params[:id])).deliver_now
    @mission.destroy
    respond_to do |format|
      format.html { redirect_to @etablissement, notice: 'La Proposition a bien été supprimée' }
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
    params.require(:mission).permit(:title, :body, :place, :appointment, :benevole_id, :etablissement_id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_etablissement
    @etablissement = Etablissement.find(params[:id])
  end

  #Never trust parameters from the scary internet, only allow the white list through.
  def etablissement_params
    params.require(:etablissement).permit(:name, :address, :zip, :city, :type, :email, :phone, :avatar, :description)
  end
end
