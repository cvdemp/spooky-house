class Stat < ActiveRecord::Base
  belongs_to :character
  STAT_TYPES = ["stat1","stat2"]

  # validates :name, presence: true
  # validates :character_id, presence: true
  # validates :value, presence: true
  # validates :level, presence: true


  SPEED_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  SPEED_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  SPEED_ARRAY_3 = [0, 3, 3, 4, 5, 6, 6, 7, 8]
  SPEED_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  SANITY_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  SANITY_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  SANITY_ARRAY_3 = [0, 3, 4, 5, 5, 6, 6, 7, 8]
  SANITY_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  KNOWLEDGE_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  KNOWLEDGE_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  KNOWLEDGE_ARRAY_3 = [0, 3, 4, 5, 5, 6, 6, 7, 8]
  KNOWLEDGE_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  MIGHT_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  MIGHT_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  MIGHT_ARRAY_3 = [0, 3, 4, 5, 5, 6, 6, 7, 8]
  MIGHT_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

end
