class Character < ActiveRecord::Base
  class << columns_hash['birthday']
    def type
      :date
    end
  end

  belongs_to :user
  belongs_to :game
  belongs_to :hobby1
  belongs_to :hobby2

  has_many :stats

  mount_uploader :image, ImageUploader

  validates :name, presence: true, uniqueness: { scope: [:user_id],
                                  message: "Character is in use." }

  validates :name, presence: true
  validates :birthday, presence: true
  validates :hobby1, presence: true
  validates :hobby2, presence: true

  def speed
    # stats.find_by(name: "speed").speed_for(birthday.month)
    if 0 < birthday.month && birthday.month < 4
      Stat::SPEED_ARRAY_1
    elsif  4 <= birthday.month && birthday.month < 7
      Stat::SPEED_ARRAY_2
    elsif  7 <= birthday.month && birthday.month < 10
      Stat::SPEED_ARRAY_3
    else
      Stat::SPEED_ARRAY_4
    end
  end

  def sanity
    if 0 < birthday.day && birthday.day < 7
      Stat::SANITY_ARRAY_1
    elsif 7 <= birthday.day && birthday.day < 15
      Stat::SANITY_ARRAY_2
    elsif 15 <= birthday.day && birthday.day < 23
      Stat::SANITY_ARRAY_3
    else
      Stat::SANITY_ARRAY_4
    end
  end

  def knowledge
    if 0 < hobby1_id && hobby1_id < 4
      Stat::KNOWLEDGE_ARRAY_1
    elsif  4 <= hobby1_id && hobby1_id < 7
      Stat::KNOWLEDGE_ARRAY_2
    elsif  7 <= hobby1_id && hobby1_id < 10
      Stat::KNOWLEDGE_ARRAY_3
    else
      Stat::KNOWLEDGE_ARRAY_4
    end
  end

  def might
    if 0 < hobby2_id && hobby2_id < 4
      Stat::MIGHT_ARRAY_1
    elsif  4 <= hobby2_id && hobby2_id < 7
      Stat::MIGHT_ARRAY_2
    elsif  7 <= hobby2_id && hobby2_id < 10
      Stat::MIGHT_ARRAY_3
    else
      Stat::MIGHT_ARRAY_4
    end
  end
end
