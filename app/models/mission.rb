class Mission < ApplicationRecord

	belongs_to :benevole
	belongs_to :etablissement

	before_create  do 
		self.place = (self.etablissement.address + " " + self.etablissement.zip + " " + self.etablissement.city)
	end
end
