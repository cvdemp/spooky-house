class CharacterStat < ActiveRecord::Base
  belongs_to :stat
  belongs_to :character

  validates :stat_id, presence: true
  validates :character_id, presence: true
  validates :value, presence: true
  validates :level, presence: true

  def printer
    puts "#{Character.find(character_id).name}"
    puts "#{Character.character_stats}"
  end
end
