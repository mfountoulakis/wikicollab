require 'spec_helper'

feature 'Visitor signs in' do
  scenario 'with valid email and password' do

    #Create a user with factorygirl
    #use the user's email with 'sign_in_with'
    #check that the next page is logged in (check for sign out content)
    sign_in_with 'Email', 'Password'
    expect(page).to have_content('Sign out')


  end

  scenario 'with invalid email' do
    failed 'invalid_email', 'password'
    expect(page).to have_content('Sign in')
  end


  scenario 'with blank password' do
    failed 'valid@example.com', ''
    expect(page).to have_content('Invalid email or password.
Sign in')
  end


  def sign_in_with(email, password)
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Sign in'
  end

  def failed(email,password)
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', with:'invalid@invalid.com'
    fill_in 'Password', with: ''
    click_button 'Sign in'


end
end