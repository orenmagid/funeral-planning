class User < ApplicationRecord
  has_secure_password

  has_many :contacts
  has_one :user_funeral
  has_one :funeral, through: :user_funeral

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email,
  :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

  def self.most_popular_dispositions
    disposition_hash = {}
    User.all.each do |user|
      if user.funeral
        if disposition_hash[user.funeral.disposition]
          disposition_hash[user.funeral.disposition] += 1
        else
          disposition_hash[user.funeral.disposition] = 1
        end
      end
    end
    disposition_hash.sort_by {|key, value| value}.reverse
  end

  def self.most_popular_dispositions_by_religion
    disposition_hash = {}
    User.all.each do |user|

      if user.funeral
        if !disposition_hash[user.funeral.religion]
          disposition_hash[user.funeral.religion.name] = {user.funeral.disposition => 1}
        else
          isposition_hash[user.funeral.religion.name][user.funeral.disposition] += 1
        end
      end
    end
    disposition_hash.sort_by {|key, value| value}.reverse
  end

  def self.total_count_of_users
    users = User.all
    total_count = 0
    users.each do |user|
      if user.funeral
        total_count += 1
      end
    end
    total_count
  end

end
