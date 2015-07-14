RSpec.describe Character do
  Stat.create!(name:"Speed")

  let(:character) { Character.create!(name:"Professor Longfellow") }
  let(:character_stat) { CharacterStat.create!(character_id: character.id, stat_id: 1, level: 2, value: 3) }

  it 'has a name' do
    expect(character.name).to eq("Professor Longfellow")
  end

  it 'has a character_stat' do
    binding.pry
    expect(character.character_stats.first.value).to eq(3)
  end
end
