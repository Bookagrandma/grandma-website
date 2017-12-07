class Etablissement < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :missions
  has_many :comments
  has_many :benevoles, through: :missions

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("city ILIKE ? OR zip ILIKE ? OR name ILIKE ? OR dept ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}", "%#{search}")
  end
end

