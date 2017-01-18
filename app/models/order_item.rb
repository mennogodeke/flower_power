class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :amount, :numericality => { :greater_than_or_equal_to => 1 }
  validates :product_id, presence: true
end
