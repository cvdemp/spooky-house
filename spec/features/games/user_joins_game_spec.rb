require 'rails_helper'

feature 'player joins a game', %{
  As a player
  I want to join a game
  So I can play with my friends
} do

  # Acceptance Criteria
  # [x] Player can join a game


  scenario 'player joins game' do
    game = FactoryGirl.create(:game)
    user = FactoryGirl.create(:user)
    character = FactoryGirl.create(:character)

    sign_in_as(user)

    visit games_path

    click_link(game.name)

    expect(page).to have_content(character.name)
  end
end
