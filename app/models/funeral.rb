class Funeral < ApplicationRecord

  belongs_to :funeral_home
  has_many :religions
  has_many :user_funerals
  has_many :users, through: :user_funerals
end
