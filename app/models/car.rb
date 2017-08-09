class Car < ApplicationRecord
  has_many :collectibles
  has_many :users, through: :collectibles
  has_many :sales
end
