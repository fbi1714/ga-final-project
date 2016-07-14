class AddDrawerIdToParts < ActiveRecord::Migration
  def change
    add_column :parts, :drawer_id, :integer
  end
end
