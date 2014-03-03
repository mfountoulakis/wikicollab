require 'spec_helper'

describe User do
  before :each do
    @user_attr = FactoryGirl.attributes_for(:user)
    @user = FactoryGirl.build(:user)
  end


  it "should create a new instance of a user" do
    User.create!(@user_attr)
  end

  it "should be invalid without a password" do
   @user.password = nil
   @user.should_not be_valid
  end

  it "should be invalid without an email" do
   @user.email = nil
   @user.should_not be_valid
  end
end