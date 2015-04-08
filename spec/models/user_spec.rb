require 'rails_helper'

RSpec.describe User, :type => :model do
  
  describe "validations" do

    it "has a valid factory" do
      user = build :user
      expect(user).to be_valid
    end

    it "is not valid without a name" do
      user = build :user, name: nil
      user.valid?
      expect(user.errors[:name].size).to be > 0
    end

  end


  describe "publish_message" do

    it "publishes a message"
    
  end

end
