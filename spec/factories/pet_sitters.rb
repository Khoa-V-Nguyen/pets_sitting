FactoryBot.define do
  factory :pet_sitter do
    contact_info { Faker::PhoneNumber.phone_number }
  end
end
