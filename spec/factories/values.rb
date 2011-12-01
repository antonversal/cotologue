# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :value do
    name { Faker::Lorem.word }
    association :filter
  end
end
