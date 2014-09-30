class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :pro, :regular
  
  validates :email, uniqueness: true
  validates :name, :email, :password, :password_confirmation, presence: true
end