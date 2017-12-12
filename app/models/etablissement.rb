class Etablissement < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :avatar

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :missions
  has_many :benevoles, through: :missions

  mount_uploader :avatar, AvatarUploader

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("city ILIKE ? OR name ILIKE ? OR dept ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}")
  end
end

