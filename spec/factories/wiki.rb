require 'faker'

FactoryGirl.define do
  factory :Wiki do |f|
    f.title { Faker::Lorem.words(num = 3) }
    f.body { Faker::Lorem.words(num = 3) }
  end
end

