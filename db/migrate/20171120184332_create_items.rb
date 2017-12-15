class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :photo_url
      t.string :category
      t.integer :quantity, null: false
      t.text :note
      t.references :list, index: true, foreign_key: true
      # good job using the foreign_key constraint however, you do not need to specify index: true as t.references will automatically add this constraint.
      # You would want to specify it if you used t.integer :species_id

      t.timestamps
    end
  end
end
