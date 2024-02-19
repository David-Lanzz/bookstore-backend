class Category < ApplicationRecord
  belongs_to :level
  has_many :books
end
