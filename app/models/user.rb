class User < ApplicationRecord
  has_secure_password

  has_many :agents
  has_one :user_funeral
  has_one :funeral, through: :user_funeral

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email,
  :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

end
