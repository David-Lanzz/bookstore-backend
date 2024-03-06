class Category < ApplicationRecord
  belongs_to :level
  has_many :books

  validates :name presence: true
  validates :level_id, presence: true
  validates :alias, presence: true
end
