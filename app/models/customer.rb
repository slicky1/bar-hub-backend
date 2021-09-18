class Customer < ApplicationRecord
    has_many :orders
    # validates :orders, presence: true
end
