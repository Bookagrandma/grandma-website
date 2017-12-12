class ProfilsController < ApplicationController


	def new
		@profil = current_benevole.build profil
	end

	def create
		@profil = current_benevole.build_profil(profil_params)
		@profil.save
	end

	def show
		@profil = Profil.find(params[:id])
	end

	def update
		@profil = Profil.find(params[:id])
		@profil.update(motivation_params)
		render 'show'
	end

	def destroy
	end

private

	def motivation_params
		params.permit(:motivation)
	end
end
