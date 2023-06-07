FactoryBot.define do
  factory :booking do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    animal_name { 'MyString' }
    animal_type { 'MyString' }
    hours_requested { 4 }
    date_of_service { Date.tomorrow }
  end
end
