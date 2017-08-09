class AddIndexToCarsTable < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :user, index: true
  end
end
