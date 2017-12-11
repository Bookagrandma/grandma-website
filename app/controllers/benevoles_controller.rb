class BenevolesController < ApplicationController

	def index
		@currentBenevole = current_benevole.id
	end

	def show
		@benevole = Benevole.find(:benevole_id) 
		@profil = @benevole.profil
	end

	def index
	end
end
