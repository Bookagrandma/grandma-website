class BenevolesController < ApplicationController

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
        format.json { render :show, status: :ok, location: @benevole }
      else
        format.html { render :edit }
        format.json { render json: @benevole.errors, status: :unprocessable_entity }
      end
    end
  end 

  private
      # Use callbacks to share common setup or constraints between actions.
      def set_benevole
        @benevole = Benevole.find(params[:id])
      end

      #Never trust parameters from the scary internet, only allow the white list through.
      def benevole_params
        params.require(:benevole).permit(:firstname, :lastname, :birthday, :address, :zip, :city, :gender, :avatar, :email, :phone, :motivation)
      end	
end




