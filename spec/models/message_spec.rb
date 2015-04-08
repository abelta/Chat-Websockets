require 'rails_helper'

RSpec.describe Message, :type => :model do
  

  describe "validations" do

    it "has a valid factory" do
      message = build :message
      expect(message).to be_valid
    end

    it "is not valid without a user_name" do
      message = build :message, user_name: nil
      message.valid?
      expect(message.errors[:user_name].size).to be > 0
    end

    it "is not valid without a text" do
      message = build :message, text: nil
      message.valid?
      expect(message.errors[:text].size).to be > 0
    end
    
  end


end
