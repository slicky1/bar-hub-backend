class Item < ApplicationRecord
  belongs_to :order
  belongs_to :brand
  has_many :orders
  has_many :brands
  has_many :customers, through: :orders



  def unit_price
    if persisted?
      self[:cost]

    else
      brand.cost
    end
  end

  def total
    cost * quantity
  end

  private

  def set_unit_price
    self[:cost] = unit_price
  end

  def set_total
    self[:total] = total * quantity
  end
end
