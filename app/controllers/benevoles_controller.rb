class BenevolesController < ApplicationController

	before_action :authenticate_benevole!, only: [:edit, :update]
	before_action :check_authorization, only: [:edit, :update]
	before_action :set_benevole

	def index
		@currentBenevole = current_benevole.id
	end

	def show
		@benevole = Benevole.find(params[:id]) 
	end

	def index
	end

	def update
    respond_to do |format|
      if @benevole.update(benevole_params)
        format.html { redirect_to @benevole, notice: 'Benevole was successfully updated.' }
        # format.json { render :show, status: :ok, location: @benevole }
      else
        format.html { render :edit }
        flash.new[:alert] = "Something went wrong. Please try again"

        # format.json { render json: @benevole.errors, status: :unprocessable_entity }
      end
      end
    end 

  private
      # Use callbacks to share common setup or constraints between actions.
      def set_benevole
        @benevole = Benevole.find(params[:id])
      end

      def check_authorization
      	unless current_benevole.id == params[:id].to_i
      		redirect_to root_url
      end

      #Never trust parameters from the scary internet, only allow the white list through.
      def benevole_params
        params.require(:benevole).permit(:firstname, :lastname, :birthday, :address, :zip, :city, :gender, :avatar, :email, :phone, :motivation)
      end	
    end
end




