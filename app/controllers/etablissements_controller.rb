class EtablissementsController < ApplicationController

  # def index
  #   #@etablissements = Etablissement.all
  #   @etablissements = Etablissement.search(params[:search], params[:id])
  # end

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
    @etprofil = @etablissement.etprofil
  end

  def etprofils
    @etprofils = Etprofil.all
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
