class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :pro, :username
end
