require 'faker'

FactoryGirl.define do
  factory :user do |user|
    name "Douglas Adams"
    sequence(:email) { |n| "person#{n}@example.com" }
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now
  end
end