class Etprofil < ApplicationRecord

	belongs_to :etablissement
	validates :etablissement_id, presence: true
end
