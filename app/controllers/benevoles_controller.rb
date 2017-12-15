class BenevolesController < ApplicationController

	before_action :authenticate_benevole!, only: [:edit, :update]
	


   def index
    if params[:search]
      @benevoles = Benevole.search(params[:search]).order("created_at ASC")
    else
      @benevoles = Benevole.all
    end
  end

	def show
		@benevole = Benevole.find(params[:id])
		@missions = Mission.all
    #@currentBenevole = current_benevole.id
	end

	def update
    respond_to do |format|
      if @benevole.update(benevole_params)
        format.html { redirect_to benevole_path(@benevole), notice: 'Votre profil bénévole a été modifié avec succès' }
        # format.json { render :show, status: :ok, location: @benevole }
      else
        format.html { render :edit }
        flash.new[:alert] = "Une erreur s'est produite. Rééssayez s'il vous plait"

        # format.json { render json: @benevole.errors, status: :unprocessable_entity }
      end
      end
    end

  private
      # Use callbacks to share common setup or constraints between actions.
      def set_benevole
        @benevole = Benevole.find(params[:id])
      end

      # def check_authorization
      # 	unless current_benevole.id == params[:id].to_i
      # 		redirect_to root_url
      # end

      #Never trust parameters from the scary internet, only allow the white list through.
      def benevole_params
        params.require(:benevole).permit(:firstname, :lastname, :birthday, :address, :zip, :city, :gender, :avatar, :email, :phone, :motivation)
      end
    end
