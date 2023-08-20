class Author < ApplicationRecord
  validates :name, presence: true
  validates :whatsapp, presence: true, uniqueness: true
  validates :twitter, presence: true, uniqueness: true
  validates :department, presence: true
  validates :level, presence:true, numericality:{only_integer: true, greater_than_or_equal_to: 100}
end
