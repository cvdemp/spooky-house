require 'rails_helper'

feature 'user edits character', %{
  As a player
  I want to edit a character
  So I can change their stats
} do

  # Acceptance Criteria
  # [] Player can update a character
  # [] Player can chose a character to play
  # [] Character is added to game
  # [] Player sees an error if character is currently in use

#   scenario 'user edits character' do
#     user = FactoryGirl.create(:user)
#     character = FactoryGirl.create(:character, user_id: user.id)
#     game = FactoryGirl.create(:game)
#
#     sign_in_as(user)
#
#     visit games_path
#
#     click_link(game.name)
#
#     click_link(character.name)
#
#     expect(page).to have_content("Character Updated!")
#
#     click_link(game.name)
#
#     within "div.players" do
#       expect(page).to have_content(character.name)
#     end
#   end
#
end
