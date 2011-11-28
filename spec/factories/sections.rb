FactoryGirl.define do
  factory :section do
    name  { Faker::Lorem.words.first }
    description  { Faker::Lorem.sentence }
  end
end
