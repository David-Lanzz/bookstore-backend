class Department < ApplicationRecord
  belongs_to :school
  has_many :levels
end
