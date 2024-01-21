class Level < ApplicationRecord
  belongs_to :department
  has_many :categories

  validates :department_id, presence: true
  validates :number, presence: true, uniqueness: {scope: :department_id}, numericality: { only_integer: true, greater_than_or_equal_to: 100 }
end
