RSpec.describe Character do
  Stat.create!(name: "Speed")

  character = FactoryGirl.create(:character)

  it 'has a name' do
    expect(character.name).to be_a(String)
  end

  it 'has a birthday' do
    expect(character.birthday).to be_a(Date)
  end
end
