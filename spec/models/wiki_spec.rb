require 'spec_helper'

describe Wiki do 
  it "has a valid factory" do 
    FactoryGirl.create(:wiki).should be_valid  
  end

  it "is invalid without a body"
  it "is invalid without a title"
  it "is invalid with too short a body"
  it "is invalid with too short a title"
  it "is invalid without a user"
end

