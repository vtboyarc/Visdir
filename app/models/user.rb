class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :pro
  
  has_secure_password
  
  has_many :listings
  
  validates :email, uniqueness: true
  validates :name, :email, :password, :password_confirmation, presence: true
end
# need to do migration, remove the 2 password fields above, add: password_digest:string
#this is used by bcyrpt. 