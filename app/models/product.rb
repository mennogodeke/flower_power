class Product < ApplicationRecord
  validates :product_name, presence: true,
            length: { minimum: 1 }
  validates :product_price, presence: true, :numericality => { :greater_than => 0 }
  validates :product_name, uniqueness: true
end
