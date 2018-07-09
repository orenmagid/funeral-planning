class Funeral < ApplicationRecord
  belongs_to :religion
  belongs_to :expense
  belongs_to :funeral_home
  belongs_to :service_type
end
