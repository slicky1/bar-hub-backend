class Category < ApplicationRecord
    has_many :brands, dependent: :destroy
    validates_uniqueness_of :name
    
    
end
