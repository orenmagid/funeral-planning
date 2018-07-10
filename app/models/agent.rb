class Agent < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
end
