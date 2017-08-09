class AddCarToCollectibleTable < ActiveRecord::Migration[5.1]
  def change
   add_column :collectible, :car, :string
  end
end
