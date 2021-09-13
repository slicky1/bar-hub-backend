class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.integer :cost

      t.timestamps
    end
  end
end
