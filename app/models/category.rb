class Category < ApplicationRecord
    has_many :brands, dependent: :destroy
    
end
