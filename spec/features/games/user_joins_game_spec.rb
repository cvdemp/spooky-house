require 'rails_helper'

feature 'player joins a game', %{
  As a player
  I want to join a game
  So I can play with my friends
} do

  # Acceptance Criteria
  # [] Player can join a game
  # [] Player is taken to character creation page
  # [] Player can see character at game table

  game = FactoryGirl.create(:game)
  user = FactoryGirl.create(:user)

  scenario 'player joins game' do
    sign_in_as(user)

    visit games_path

    click_link(game.name)

    expect(page).to have_content("Pick a character!")
  end
end
