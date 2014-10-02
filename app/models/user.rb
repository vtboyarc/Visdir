class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :pro, :regular
  
  has_secure_password
  
  has_many :listings
  
  validates :email, uniqueness: true
  validates :name, :email, :password, :password_confirmation, presence: true
end


#remove pro and regular, add again, but make :boolean
