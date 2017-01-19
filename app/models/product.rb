class Product < ApplicationRecord
  validates :product_name, presence: true, #valideerd aanwezigheid
            length: { minimum: 1 }  #valideerd lengte moet meer zijn dan 1
  validates :product_price, presence: true, :numericality => { :greater_than => 0 } #valideerd aanwezigheid en moet hoger zijn dan 0
  validates :product_name, uniqueness: true #valideerd aanwezigheid
end
