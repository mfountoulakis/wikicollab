FactoryGirl.define do 
  factory :wiki do
    body {Faker::Lorem.sentences(sentence_count = 4)}
    title {Faker::Lorem.sentences(sentence_count = 4)}
    end
  end
