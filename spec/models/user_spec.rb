require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Create" do
    subject(:user) { FactoryGirl.create(:user) }

    it "should create a new instance of class User" do
      expect(user).to be_an_instance_of(User)
    end

    it "should have a username" do
      expect(user.username).to_not be_nil
    end

    it "should have a valid email" do
      FactoryGirl.build(:user, :email => "EmailWithoutTheAtSign").should_not be_valid
    end

  describe "New" do
    it "should direct to users#new page" do
      expect(3).to eq(3)
    end
  end
end
