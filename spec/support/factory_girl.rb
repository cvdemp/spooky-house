require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :hobby1 do
    name 'Coloring'
  end

  factory :hobby2 do
    name 'Knife Making'
  end

  factory :game do
    sequence(:name) { |n| "Game #{n}" }
  end

  factory :character do
    sequence(:name) { |n| "Character #{n}" }
    sequence(:birthday) { |n| "Wed, #{n} Jul 2015" }

    hobby1
    hobby2
  end

  factory :stat do
    name 'Speed'
  end

end
