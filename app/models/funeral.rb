class Funeral < ApplicationRecord
  belongs_to :funeral_home
  belongs_to :religion
  has_many :user_funerals, :dependent => :destroy
  has_many :users, through: :user_funerals
  accepts_nested_attributes_for :funeral_home, reject_if: proc { |attributes| attributes['name'].blank? }

  def most_popular_funeral_home
    @funerals = Funeral.all
    @funerals.each do |funeral|
      funeral.funeral_home.name

    end


  end
end
