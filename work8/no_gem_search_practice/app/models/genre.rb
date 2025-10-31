class Genre < ApplicationRecord
  has_many :cookings
  validates :genre_name, presence: true, uniqueness: true
end
