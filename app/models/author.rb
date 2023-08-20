class Author < ApplicationRecord
  belongs_to :school

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :whatsapp, presence: true, uniqueness: true
  validates :twitter, uniqueness: true
  validates :level, presence: true
  validates :department, presence: true
end
