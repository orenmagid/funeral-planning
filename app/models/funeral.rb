class Funeral < ApplicationRecord
  belongs_to :funeral_home
  belongs_to :religion
  has_many :user_funerals, :dependent => :destroy
  has_many :users, through: :user_funerals
  accepts_nested_attributes_for :funeral_home, reject_if: proc { |attributes| attributes['name'].blank? }

  def self.most_popular_funeral_home
    funerals = Funeral.all
    funeral_home_hash = {}
    funerals.each do |funeral|
      if funeral_home_hash[funeral.funeral_home.name]
        funeral_home_hash[funeral.funeral_home.name] += 1
      else
        funeral_home_hash[funeral.funeral_home.name] = 1
      end
    end
    funeral_home_hash.sort_by {|_key, value| value}.reverse
  end

end


# def self.most_res
#   neighborhoods = Neighborhood.all
#   ratio_hash = {}
#   neighborhoods.each do |neighborhood|
#     reservation_count = 0
#       neighborhood.listings.each do |listing|
#         reservation_count += listing.reservations.count
#       end
#       ratio_hash[neighborhood.name] = reservation_count
#   end
#   Neighborhood.find_by(name: ratio_hash.max_by{|k,v| v}[0])
# end
