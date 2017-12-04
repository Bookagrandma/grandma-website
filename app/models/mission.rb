class Mission < ApplicationRecord

	has_many :comments
	belongs_to :benevole
	belongs_to :etablissement
end
