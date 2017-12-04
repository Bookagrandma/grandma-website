class Benevole < ApplicationRecord

	has_many :missions
	has_many :comments
	has_many :etablissements, through: :missions
end
