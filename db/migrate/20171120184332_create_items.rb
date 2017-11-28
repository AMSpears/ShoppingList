class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :photo_url
      t.string :category
      t.integer :quantity, null: false
      t.text :note
      t.references :list, index: true, foreign_key: true


      t.timestamps
    end
  end
end
