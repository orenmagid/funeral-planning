class Funeral < ApplicationRecord
  belongs_to :religion
  belongs_to :expense
  belongs_to :funeral_home
  belongs_to :service_type
  has_many :user_funerals
  has_many :users, through: :user_funerals
end
