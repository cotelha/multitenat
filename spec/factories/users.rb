# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:user_email) { |n| "user#{n}@example.com" }

  factory :user do
    email { generate(:user_email) }
    password {"123123123"}
    password_confirmation {"123123123"}
  end
end
