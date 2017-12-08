class Benevole < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

	has_many :missions
	has_many :comments, as: :commentable
	has_many :etablissements, through: :missions
	
	has_one :profil, dependent: :destroy
  	after_create :init_profil

  def init_profil
    self.create_profil!
  end
end
