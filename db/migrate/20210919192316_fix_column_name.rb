class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column(:orders, :quantity, :cost)
  end
end
