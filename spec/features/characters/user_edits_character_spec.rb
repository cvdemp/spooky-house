require 'rails_helper'

feature 'user edits character', %{
  As a player
  I want to edit a character
  So I can change their stats
} do

  # Acceptance Criteria
  # [x] Player can edit a character
  # [] Player sees an error if form is filled out incorrectly

  scenario 'user edits character' do
    user = FactoryGirl.create(:user)
    character = FactoryGirl.create(:character, user_id: user.id)

    sign_in_as(user)

    click_link("My Characters")

    click_link("Edit")

    fill_in "Name", with: "Bojangles"

    click_button("Save changes")

    expect(page).to have_content("Character Updated")
  end

end
