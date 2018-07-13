require 'rails_helper'

RSpec.describe Funeral, type: :model do

  describe "Associations" do
    it { should belong_to(:funeral_home) }
    it { should belong_to(:religion) }
    it { should have_one(:user_funeral) }
    it { should have_one(:user) }
  end

end
