# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :petition do
    title "My Title"
    description "My description"
    association :user
  end

  factory :user do
    email "example@example.com"
    password "password"
    password_confirmation "password"
  end

end
