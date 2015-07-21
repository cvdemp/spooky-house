require 'rails_helper'

feature 'player can view a list of available characters', %{
  As a player
  I want see a list of all the characters
  So I can choose one to play
} do

  #   Acceptance Criteria
  # [x] Player sees a list of characters

  scenario 'user views list of characters' do
    game = FactoryGirl.create(:game)
    user = FactoryGirl.create(:user)
    character1 = FactoryGirl.create(:character)
    character2 = FactoryGirl.create(:character)

    sign_in_as(user)

    visit games_path

    click_link(game.name)

    expect(page).to have_content(character1.name)
    expect(page).to have_content(character2.name)
  end
end
