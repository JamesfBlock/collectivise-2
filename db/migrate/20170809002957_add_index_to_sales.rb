class AddIndexToSales < ActiveRecord::Migration[5.1]
  def change
    add_reference :sales, :car, index: true
  end
end
