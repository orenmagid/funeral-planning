class UserFuneral < ApplicationRecord
  belongs_to :user
  belongs_to :funeral
end
