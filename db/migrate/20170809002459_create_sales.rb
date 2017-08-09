class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :method
      t.string :seller
      t.string :sale_price
      t.string :notes

      t.timestamps
    end
  end
end
