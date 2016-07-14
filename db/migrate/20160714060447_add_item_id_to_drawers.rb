class AddItemIdToDrawers < ActiveRecord::Migration
  def change
    add_column :drawers, :item_id, :integer
  end
end
