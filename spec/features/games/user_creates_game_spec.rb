require 'rails_helper'

feature 'user creates a game', %{
  As a player
  I want to create a game
  So I can play with my friends
} do

  # Acceptance Criteria
  # [x] Player can create a game
  # [x] Player can see the new game on the games list

  scenario "player creates game" do
    visit games_path

    click_link("Create a game")
    save_and_open_page

    fill_in "Name", with: "The best game"
    click_button("Submit")

    expect(page).to have_content("Join a Game")
    expect(page).to have_content("The best game")
  end
end
