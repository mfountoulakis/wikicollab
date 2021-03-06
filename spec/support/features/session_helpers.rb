require'spec_helper'
module Features
  module SessionHelpers

    def sign_in_with
      user = FactoryGirl.build(:user)
      visit sign_in_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'
    end
      
  end
end