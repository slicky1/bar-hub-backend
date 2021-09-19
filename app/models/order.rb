class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :brand
  has_many :items
  before_save :set_totalcost


  def subtotal
    items.collect{|items| items.valid? ? items.cost*items.quantity : 0}.sum
  end


  private

  def set_totalcost
    self[:total_cost] = total_cost
  end
end
