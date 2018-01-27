class ChangeColumnNullToQuantityOnItems < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :quantity, :integer, :null => true
  end
end
