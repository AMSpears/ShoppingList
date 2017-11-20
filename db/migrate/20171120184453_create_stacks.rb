class CreateStacks < ActiveRecord::Migration[5.1]
  def change
    create_table :stacks do |t|
     t.integer :num_lits, null: false
     t.integer :num_items, null: false
     t.references :list, foreign_key: true, null: false
     t.references :item, foreign_key: true, null: false

    end
  end
end
