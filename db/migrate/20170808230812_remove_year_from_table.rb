class RemoveYearFromTable < ActiveRecord::Migration[5.1]
  def change
     remove_column :collectible, :year
  end
end
