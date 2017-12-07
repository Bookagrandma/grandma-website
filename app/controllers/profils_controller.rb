class ProfilsController < ApplicationController


	def new
		@profil = current_benevole.build profil
	end

	def create
		@profil = current_benevole.build_profil(profil_params)
		@profil.save
	end

	def show
	end

	def edit
	end

	def detroy	
	end


end


