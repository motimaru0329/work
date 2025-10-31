class Cooking < ApplicationRecord
  belongs_to :genre
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end
