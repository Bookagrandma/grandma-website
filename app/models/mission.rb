class Mission < ApplicationRecord

	has_many :comments, as: :commentable 
	belongs_to :benevole
	belongs_to :etablissement
end
