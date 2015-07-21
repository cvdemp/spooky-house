class Game < ActiveRecord::Base
  has_many :characters
  accepts_nested_attributes_for :characters

  validates :name, presence: true
end
