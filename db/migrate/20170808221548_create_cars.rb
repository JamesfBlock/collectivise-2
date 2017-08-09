class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :manufacturer
      t.string :model
      t.string :car_type
      t.string :year
      t.string :competition_car
      t.integer :mileage
      t.integer :owners
      t.string :authenticity_certificate
      t.string :service_history
      t.string :color
      t.string :condition
      t.string :gearbox
      t.string :drive
      t.string :value

      t.timestamps
    end
  end
end
