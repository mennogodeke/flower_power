class OrderItem < ApplicationRecord
  belongs_to :order #heeft 1 bestelling
  belongs_to :product #heeft 1 product
  validates :amount, :numericality => { :greater_than_or_equal_to => 1 } #valideerd op minimaal 1 of meer
  validates :product_id, presence: true #valideerd aanwezigheid
end
