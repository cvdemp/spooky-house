class Character < ActiveRecord::Base
  class << columns_hash['birthday']
    def type
      :date
    end
  end

  belongs_to :user
  belongs_to :game
  has_many :stats, through: :character_stats
  has_many :character_stats

  validates :name, presence: true, uniqueness: { scope: [:game_id],
                                    message: "Character is in use." }
end
