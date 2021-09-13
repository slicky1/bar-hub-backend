class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :brand
  has_many :items
end
