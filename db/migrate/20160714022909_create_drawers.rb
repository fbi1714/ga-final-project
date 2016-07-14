class CreateDrawers < ActiveRecord::Migration
  def change
    create_table :drawers do |t|
      t.integer :drawer_number
      t.integer :qty_rows
      t.integer :qty_columns

      t.timestamps null: false
    end
  end
end
