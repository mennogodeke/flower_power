class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #standaard devise validaties
  validates_presence_of :first_name #valideerd aanwezigheid
  validates :first_name,
            :length => { :minimum => 2 }, #valideert minimale lengte 2
            format: { :with => /\A[a-zA-Z_\-]+\z/ }
  validates_presence_of :last_name#valideerd aanwezigheid
  validates :last_name,
            :length => { :minimum => 2 },#valideert minimale lengte 2
            format: { :with => /\A[a-zA-Z_\-]+\z/ }#valideerd op alleen letters
  validates_presence_of :address#valideerd aanwezigheid
  validates :address, :length => { :minimum => 2 }#valideert minimale lengte 2
  validates_presence_of :zip#valideerd aanwezigheid
  validates :zip,
            :length => { :minimum => 2 },#valideert minimale lengte 2
            format: { :with => /(?:^|\D)\d{4}(?:\D|$)/ }
  validates_presence_of :city#valideerd aanwezigheid
  validates :city,
            :length => { :minimum => 2 },#valideert minimale lengte 2
            format: { :with => /\A[a-zA-Z_\-]+\z/ } #valideerd op alleen letters
  validates_presence_of :dob#valideerd aanwezigheid

end
