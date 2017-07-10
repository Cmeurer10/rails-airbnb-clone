class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :edition
      t.string :condition
      t.integer :price
      t.string :subject
      t.string :description
      t.string :publisher
      t.string :isbn
      t.boolean :sold
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
