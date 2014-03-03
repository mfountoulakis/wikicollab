require 'spec_helper'
  describe 'wikis' do 
    it "is invalid without body" do
      FactoryGirl.build(:Wiki, body: nil).should_not be_valid
    end

   it "is invalid without a title" do
      FactoryGirl.build(:Wiki, title: nil).should_not be_valid
    end
  end