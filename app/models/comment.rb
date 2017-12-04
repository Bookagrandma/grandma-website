class Comment < ApplicationRecord

	belongs_to :benevole
	belongs_to :mission
	belongs_to :etablissement
end
