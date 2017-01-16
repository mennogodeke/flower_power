class Product < ApplicationRecord
  validates :product_name, presence: true,
            length: { minimum: 1 }
  validates :product_price, presence: true
end
