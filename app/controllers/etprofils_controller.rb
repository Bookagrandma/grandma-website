class EtprofilsController < ApplicationController

		def new
		@etprofil = current_etablissement.build etprofil
	end

	def create
		@etprofil = current_etablissement.build_etprofil(etprofil_params)
		@etprofil.save
	end

	def show
		@etprofil = etprofil.find(params[:id])
	end

	def update
		@etprofil = etprofil.find(params[:id])
		@etprofil.update(motivation_params)
		render 'show'
	end

	def detroy
	end

private

	def motivation_params
		params.permit(:description)
	end
end
