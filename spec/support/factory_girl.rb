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
    user_id 1
    game_id 1
    sequence(:birthday) { |n| "Wed, #{n} Jul 2015" }
    hobby_1 'Coloring'
    hobby_2 'Macrame'
  end

  factory :stat do
    name 'Speed'
  end
end
