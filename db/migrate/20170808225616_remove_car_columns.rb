class RemoveCarColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :collectible, :manufacturer
    remove_column :collectible, :car_type
    remove_column :collectible, :model
  end
end
