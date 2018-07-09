class User < ApplicationRecord
  has_secure_password


  belongs_to :disposition, optional: true
  has_many :agents
  has_many :user_funerals
  has_many :funerals, through: :user_funerals
end
