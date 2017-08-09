class User < ApplicationRecord

  #association
  has_many :collectibles
  has_many :cars, through: :collectibles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
