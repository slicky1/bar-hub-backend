class Item < ApplicationRecord
  belongs_to :order
  belongs_to :brand
  has_many :orders
  has_many :brands
  has_many :customers, through: :orders
end
