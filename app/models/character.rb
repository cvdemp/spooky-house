class Character < ActiveRecord::Base
  belongs_to :user
  has_many :stats, through: :character_stats
  has_many :character_stats

  validates :name, presence: true
end
