class User < ApplicationRecord
  belongs_to :disposition
  has_many :agents
  has_many :user_funerals
  has_many :funerals, through: :user_funerals
end
