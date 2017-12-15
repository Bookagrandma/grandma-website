class EtablissementsController < ApplicationController

  before_action :authenticate_etablissement!, only: [:edit, :update]
  


  def index
    if params[:search]
      @etablissements = Etablissement.search(params[:search]).order("created_at ASC")
    else
      @etablissements = Etablissement.all
    end
  end


  def show
    @etablissement = Etablissement.find(params[:id])
    @missions = Mission.where(etablissement_id: @etablissement).order("created_at DESC")

  end

  def update
    respond_to do |format|
      if @etablissement.update(etablissement_params)
        format.html { redirect_to @etablissement, notice: 'Votre profil établissement a été modifié avec succès' }
        # format.json { render :show, status: :ok, location: @etablissement }
      else
        format.html { render :edit }
        flash.new[:alert] = "Une erreur s'est produite. Veuillez rééssayer s'il vous plaît"

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
        params.require(:etablissement).permit(:name, :address, :zip, :city, :dept, :type, :email, :phone, :avatar, :description)
      end
end
