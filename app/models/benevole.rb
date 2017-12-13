class Benevole < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   attr_accessor :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

	has_many :missions
	has_many :etablissements, through: :missions

	mount_uploader :avatar, AvatarUploader

	validates :avatar, presence: true
	
end
