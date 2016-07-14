class AddRowNumberAndColumnNumberToParts < ActiveRecord::Migration
  def change
    add_column :parts, :row_number, :integer
    add_column :parts, :column_number, :integer
  end
end
