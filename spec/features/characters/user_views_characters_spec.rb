require 'rails_helper'

feature 'player can view a list of available characters', %{
  As a player
  I want see a list of all the characters
  So I can choose one to play
} do

  #   Acceptance Criteria
  # [] Player sees a list of characters

  scenario 'user views list of characters' do
    game = FactoryGirl.create(:game)
    user = FactoryGirl.create(:user)
    test_characters = FactoryGirl.create_list(:character, 5)

    sign_in_as(user)

    visit games_path

    click_link(game.name)

    test_characters.each do |character|
      expect(page).to have_content(character.name)
    end
  end
end
