require 'rails_helper'

feature 'user creates a game', %{
  As a player
  I want to create a game
  So I can play with my friends
} do

  # Acceptance Criteria
  # [x] Player can create a game
  # [] Player must be signed in to create a game
  # [x] Player can see the new game on the games list

  scenario "authenticated player creates game" do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit games_path

    click_link("Create a new game")

    fill_in "Name", with: "The best game"
    click_button("Submit")

    expect(page).to have_content("Game created!")
    expect(page).to have_content("The best game")
  end
end
