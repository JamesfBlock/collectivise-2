class User < ApplicationRecord

  #association
  has_many :collectibles
  has_many :cars, through: :collectibles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Cloudinary
  has_attachment :profile_image

  def full_name
    first = self.first_name
    last = self.last_name
    full = first + " " + last
    return full
  end

  def get_profile_picture
  end

end
