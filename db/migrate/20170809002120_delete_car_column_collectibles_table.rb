class DeleteCarColumnCollectiblesTable < ActiveRecord::Migration[5.1]
  def change
         remove_column :collectibles, :car

  end
end
