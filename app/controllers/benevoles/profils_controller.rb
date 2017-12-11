class Benevoles::ProfilsController < ApplicationController

	def index
		@currentBenevole = current_benevole.id
	end


	def new
		@benevole = Benevole.find(params[:benevole_id])
		@profil = current_benevole.build profil
	end

	def create
		@benevole = Benevole.find(params[:benevole_id])
		@profil = current_benevole.build_profil(profil_params)
		@profil.benevole = @profil
		@profil.save
	end

	def show
		@benevole = Benevole.find(params[:benevole_id])
		@profil = Profil.find(params[:id])
		@profil = @benevole.profil
	end

	def update
		@profil = Profil.find(params[:id])
		@profil.update(motivation_params)
		render 'show'
	end

	def detroy
	end

private

	def motivation_params
		params.permit(:motivation)
	end
end
