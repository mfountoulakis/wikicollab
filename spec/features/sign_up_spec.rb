require 'spec_helper'

feature 'Visitor signs in' do
  scenario 'with valid email and password' do
    sign_in_with 'email', 'password'

  end

  scenario 'with invalid email' do
    sign_in_with 'invalid_email', 'password'

    expect(page).to have_content('Sign in')
  end

  scenario 'with blank password' do
    sign_in_with 'valid@example.com', ''

    expect(page).to have_content('Sign in')
  end

  def sign_in_with(email, password)
    visit new_user_session_path
    fill_in 'Email', with: 'fountoulakismanos@gmail.com'
    fill_in 'Password', with: 'salacious'
    click_button 'Sign in'
  end
end