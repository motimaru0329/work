class User < ApplicationRecord
  has_secure_password

  has_many :cookings
  validates :email, presence: true, uniqueness: true
end
