FactoryBot.define do
  factory :user do
    username { Faker::Internet.user('username') }
    email { Faker::Internet.user('email') }
  end
end
