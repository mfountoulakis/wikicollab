require 'spec_helper'

  describe 'wiki' do 
    it "should have a factory" do
      FactoryGirl.build(:wiki).should be_valid
    end
  end