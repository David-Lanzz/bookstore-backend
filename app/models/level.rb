class Level < ApplicationRecord
  belongs_to :department
  validates :department_id, presence: true
  validates :number, presence: true, uniqueness: true, numericality: { only_integer: true, greater_than_or_equal_to: 100 }
end
