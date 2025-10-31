class User < ApplicationRecord
  has_secure_password
  has_one_attached :icon
  has_many :posts, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true
end
