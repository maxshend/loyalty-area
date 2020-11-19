# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:auth_id) { |i| i + 1 }
    email { Faker::Internet.unique.email }
    full_name { Faker::Name.name }
    phone { Faker::PhoneNumber.phone_number }
    birthdate { Faker::Date.birthday min_age: 18, max_age: 65 }
  end
end
