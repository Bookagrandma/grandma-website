class EtablissementsController < ApplicationController

  def index
    @etablissements = Etablissement.all
  end

  def show
 	Etablissement.find(params[:id])
  end


	# private
	#     # # Use callbacks to share common setup or constraints between actions.
	#     # def set_etablissement
	#     #   @etablissement = Etablissement.find(params[:id])
	#     # end

	#     # Never trust parameters from the scary internet, only allow the white list through.
	#     def etablissement_params
	#       params.require(:etablissement).permit(:name, :address, :zip, :city, :type, :email, :phone)
	#     end
end