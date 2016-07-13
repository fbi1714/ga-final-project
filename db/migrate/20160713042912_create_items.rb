class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :serie
      t.integer :height
      t.integer :number_drawers
      t.boolean :double_door, default: false
      t.boolean :single_door, default: false

      t.timestamps null: false
    end
  end
end
