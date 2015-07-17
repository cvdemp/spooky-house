require 'rails_helper'

feature 'user edits character', %{
  As a player
  I want to edit a character
  So I can add them to my game
} do

  scenario 'user edits character', focus: true do
    character = FactoryGirl.create(:character)
    user = FactoryGirl.create(:user)
    game = FactoryGirl.create(:game)

    sign_in_as(user)

    visit games_path

    click_link(game.name)
save_and_open_page
    select character.name, from: "Character Name"

    click_button("Select character")

    expect(page).to have_content("Character Added!")
    within "div.players" do
      expect(page).to have_content(character.name)
    end
  end

end
