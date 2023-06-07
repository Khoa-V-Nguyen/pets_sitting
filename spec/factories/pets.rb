FactoryBot.define do
  factory :pet do
    pet_name { Faker::Name.first_name }
    species { 1 }
    age { 3 }
    owner { create(:user) }
  end
end
