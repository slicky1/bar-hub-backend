class Brand < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :items
end
