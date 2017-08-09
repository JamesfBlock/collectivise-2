class CollectibletoPlural < ActiveRecord::Migration[5.1]
  def change
    rename_table :collectible, :collectibles
  end
end
