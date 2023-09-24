class Department < ApplicationRecord
  belongs_to :school
  has_many :levels
  has_many :books

  validates :name, presence: true, uniqueness: {scope: :school_id}
  validates :school_id, presence: true
  validates :alias, presence: true
end
