require 'rails_helper'

feature 'user selects character', %{
  As a player
  I want to select a character
  So I can play as my favorite character
} do

  # Acceptance Criteria
  # [] Player can select character from a list
  # [] Player sees chosen character with markers at starting levels


  scenario "player choses character" do
    user = FactoryGirl.create(:user)
    game = FactoryGirl.create(:game)
    character = FactoryGirl.create(:character)

    sign_in_as(user)

    visit games_path

    click_link(game.name)

    click_link(character.name)

    expect(page).to have_content("Speed")
  end
end
