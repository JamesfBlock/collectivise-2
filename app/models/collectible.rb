class Collectible < ApplicationRecord
  belongs_to :user
  has_one :car
end
