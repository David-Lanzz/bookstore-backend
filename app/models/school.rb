class School < ApplicationRecord
  has_many :departments
  has_many :levels
  has_many :authors
end
