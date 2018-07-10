class Funeral < ApplicationRecord

  belongs_to :funeral_home
  belongs_to :religion
  has_many :user_funerals
  has_many :users, through: :user_funerals
  accepts_nested_attributes_for :funeral_home, reject_if: proc { |attributes| attributes['name'].blank? }
end
