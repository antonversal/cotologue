# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    association :section
  end
end
