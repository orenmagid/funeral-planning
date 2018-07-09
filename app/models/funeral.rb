class Funeral < ApplicationRecord

  belongs_to :funeral_home
  belongs_to :religion
  has_many :user_funerals
  has_many :users, through: :user_funerals
end
