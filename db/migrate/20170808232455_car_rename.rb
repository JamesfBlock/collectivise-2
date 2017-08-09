class CarRename < ActiveRecord::Migration[5.1]
  def change
    rename_table :car_lists, :cars
  end
end
