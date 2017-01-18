class Order < ApplicationRecord
  has_many :order_items
  belongs_to :store
  belongs_to :customer, :class_name => 'User', :foreign_key => 'customer_id'
  belongs_to :employee, :class_name => 'User', :foreign_key => 'employee_id'

end
