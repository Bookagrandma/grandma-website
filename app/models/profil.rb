class Profil < ApplicationRecord

	belongs_to :benevole
	validates :benevole_id, presence: true
end
