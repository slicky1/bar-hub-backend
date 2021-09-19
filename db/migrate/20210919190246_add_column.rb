class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column(:items, :quantity, :integer)
    add_column(:items, :total_cost, :decimal)
  end
end
