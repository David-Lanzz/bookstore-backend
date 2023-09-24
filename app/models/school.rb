class School < ApplicationRecord
  has_many :departments
  has_many :levels
  has_many :authors
  has_many :books

  validates :name, presence: true, uniqueness: true
  validates :logo, presence: true
  validates :location, presence:true
  validates :alias, presence: true, uniqueness: true
end
