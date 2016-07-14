class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.text :cell_content

      t.timestamps null: false
    end
  end
end
