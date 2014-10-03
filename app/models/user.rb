class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :pro, :username, :email
  has_secure_password
  
  has_many :listings
  
  validates :email, uniqueness: true
  validates :username, :email, :password, :password_confirmation, presence: true
  validates :password, :password_confirmation, length: { in: 6..20 }

end
