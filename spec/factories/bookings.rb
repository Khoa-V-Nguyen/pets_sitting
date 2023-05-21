FactoryBot.define do
  factory :booking do
    first_name { 'MyString' }
    last_name { 'MyString' }
    animal_name { 'MyString' }
    animal_type { 'MyString' }
    hours_requested { 4 }
    date_of_service { Date.tomorrow }
  end
end
