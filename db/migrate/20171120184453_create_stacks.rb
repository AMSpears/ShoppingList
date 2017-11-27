class CreateStacks < ActiveRecord::Migration[5.1]
  def change
    create_table :stacks do |t|
     t.integer :list_id
     t.integer :item_id
     t.integer :num_items, null:false
     t.integer :num_lists, null:false
     t.references :list, foreign_key: true, null: false
     t.references :item, foreign_key: true, null: false

     t.timestamps
    end
  end
end
