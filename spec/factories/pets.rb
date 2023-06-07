FactoryBot.define do
  factory :pet do
    pet_name { Faker::Name.first_name }
    species { 1 }
    user
    pet_sitter
  end
end
