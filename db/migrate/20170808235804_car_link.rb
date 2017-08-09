class CarLink < ActiveRecord::Migration[5.1]
  def change
    add_reference :collectibles, :car, index: true
  end
end
