class Order < ApplicationRecord
  has_many :order_items #heeft meer bestelling items
  belongs_to :store #hoort bij een winkel
  belongs_to :customer, :class_name => 'User', :foreign_key => 'customer_id' #hoort bij een klant
  belongs_to :employee, :class_name => 'User', :foreign_key => 'employee_id' #hoort bij een medewerker

end
