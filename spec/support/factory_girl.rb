require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :game do
    sequence(:name) { |n| "Game #{n}" }
  end

  factory :character do
    sequence(:name) { |n| "Character #{n}" }
    sequence(:birthday) { |n| "Wed, #{n} Jul 2015" }

    hobby1 'Coloring'
    hobby2 'Knife Making'
  end

  factory :stat do
    name 'Speed'
  end

end
