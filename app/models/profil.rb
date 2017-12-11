class Profil < ApplicationRecord
	attr_accessor :avatar
	belongs_to :benevole
	validates :benevole_id, presence: true
	mount_uploader :avatar, AvatarUploader
end
