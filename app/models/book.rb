class Book < ApplicationRecord
  belongs_to :author
  belongs_to :school
  belongs_to :department
  belongs_to :level

  validates :title, presence: true
  validates :category, presence: true
  validates :pages, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :progress, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :link, presence: true, uniqueness: {scope: :level_id}
  validates :author_id, presence: true
  validates :school_id, presence: true
  validates :level_id, presence: true
  validates :department_id, presence: true
end
