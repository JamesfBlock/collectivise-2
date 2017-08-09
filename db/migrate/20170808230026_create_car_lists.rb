class CreateCarLists < ActiveRecord::Migration[5.1]
  def change
    create_table :car_lists do |t|
      t.string :model
      t.string :manufacturer
      t.string :car_type
      t.string :year

      t.timestamps
    end
  end
end
