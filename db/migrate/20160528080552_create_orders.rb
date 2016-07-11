class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :description
      t.integer :order_number
  

      t.timestamps null: false
    end
  end
end
