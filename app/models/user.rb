class User < ApplicationRecord
  has_secure_password

  has_many :agents
  has_many :user_funerals
  has_many :funerals, through: :user_funerals
  
end
