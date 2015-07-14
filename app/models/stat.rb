class Stat < ActiveRecord::Base
  has_many :characters, through: :character_stats
  has_many :character_stats

  validates :name, presence: true
end
