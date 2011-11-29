FactoryGirl.define do
  factory :section do
    name  { Faker::Lorem.word }
    description  { Faker::Lorem.sentence }
  end
end
