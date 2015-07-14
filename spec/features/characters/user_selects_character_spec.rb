require 'rails_helper'

feature 'user selects character', %{
  As a player
  I want to select a character
  So I can play as my favorite character
} do

  # Acceptance Criteria
  # [] User can select character from a list
  # [] User sees chosen character with markers at starting levels

  scenario "user choses character" do
    Character.create!(name:"Professor Longfellow")

    visit root_path
    click_link("Professor Longfellow")
    # select "Professor Longfellow", from: "Characters"

    expect(page).to have_content("Speed")
  end
end
