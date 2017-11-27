class CreateStacks < ActiveRecord::Migration[5.1]
  def change
    create_table :stacks do |t|
     t.references :list, foreign_key: true, null: false
     t.references :item, foreign_key: true, null: false

     t.timestamps
    end
  end
end
