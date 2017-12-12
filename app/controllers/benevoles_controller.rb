class BenevolesController < ApplicationController

	def index
		@currentBenevole = current_benevole.id
	end

	def show
		@benevole = Benevole.find(params[:id]) 
	end

	def index
	end
end
