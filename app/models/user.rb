class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :first_name
  validates :first_name,
            :length => { :minimum => 2 },
            format: { :with => /\A[a-zA-Z_\-]+\z/ }
  validates_presence_of :last_name
  validates :last_name,
            :length => { :minimum => 2 },
            format: { :with => /\A[a-zA-Z_\-]+\z/ }
  validates_presence_of :address
  validates :address, :length => { :minimum => 2 }
  validates_presence_of :zip
  validates :zip,
            :length => { :minimum => 2 },
            format: { :with => /(?:^|\D)\d{4}(?:\D|$)/ }
  validates_presence_of :city
  validates :city,
            :length => { :minimum => 2 },
            format: { :with => /\A[a-zA-Z_\-]+\z/ }
  validates_presence_of :dob

end
