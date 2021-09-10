class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :img_url
      t.integer :quantity
      t.integer :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
