require 'rails_helper'

feature 'user creates a character', %{
  As a player
  I want to create a character
  So I can personalize my game
} do

  # Acceptance Criteria
  # [x] Player can create a character
  # [x] Player has option to use character in game
  # [x] Player sees an error if form is filled out incorrectly

  scenario 'user creates a character' do
    character = FactoryGirl.build(:character)
    user = FactoryGirl.create(:user)
    game = FactoryGirl.create(:game)

    sign_in_as(user)

    click_link("Create a new character")

    fill_in "Name", with: character.name
    select character.birthday.year, from: "character[birthday(1i)]"
    select "July", from: "character[birthday(2i)]"
    select character.birthday.day, from: "character[birthday(3i)]"
    select "Coloring", from: "character_hobby1_id"
    select "Knife Making", from: "character_hobby2_id"

    click_button("Submit")

    click_link(game.name)

    expect(page).to have_content(game.name)
    expect(page).to have_content(character.name)
  end

  scenario 'user fills out form incorrectly' do
    user = FactoryGirl.create(:user)
    game = FactoryGirl.create(:game)

    sign_in_as(user)

    click_link("Create a new character")

    click_button("Submit")

    expect(page).to have_content("Name can't be blank")
  end
end
