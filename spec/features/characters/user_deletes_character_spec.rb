require 'rails_helper'

feature 'user edits character', %{
  As a player
  I want to delete a character
  Because they weren't fun to play
} do
  # Acceptance Criteria
  # [x] Player can delete a character they created
  # [x] Player recieves a confirmation message
  # [] Player sees error if they try to delete a character the did not create
  # [] Player must be logged in to delete character

  scenario 'user deletes character they created' do
    user = FactoryGirl.create(:user)
    character = FactoryGirl.create(:character, user_id: user.id)

    sign_in_as(user)

    click_link("My Characters")

    click_link("Delete")

    expect(page).to have_content("Character Deleted")
  end

end
