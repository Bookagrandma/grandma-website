class EtablissementsController < ApplicationController

  # def index
  #   #@etablissements = Etablissement.all
  #   @etablissements = Etablissement.search(params[:search], params[:id])
  # end

  before_action :authenticate_etablissement!, only: [:edit, :update]
  

 autocomplete :city, :name, :dept

  def index
    if params[:search]
      @etablissements = Etablissement.search(params[:search]).order("created_at ASC")
    else
      @etablissements = Etablissement.all
    end
  end


  def show
    @etablissement = Etablissement.find(params[:id])
    @mission = Mission.new
    @missions = Mission.where(etablissement_id: @etablissement).order("created_at DESC")

  end

  def update
    respond_to do |format|
      if @etablissement.update(etablissement_params)
        format.html { redirect_to @etablissement, notice: 'etablissement was successfully updated.' }
        # format.json { render :show, status: :ok, location: @etablissement }
      else
        format.html { render :edit }
        flash.new[:alert] = "Something went wrong. Please try again"

        # format.json { render json: @etablissement.errors, status: :unprocessable_entity }
      end
      end
    end


  private
      # Use callbacks to share common setup or constraints between actions.
      def set_etablissement
        @etablissement = Etablissement.find(params[:id])
      end

      #Never trust parameters from the scary internet, only allow the white list through.
      def etablissement_params
        params.require(:etablissement).permit(:name, :address, :zip, :city, :type, :email, :phone, :avatar, :description)
      end
end
