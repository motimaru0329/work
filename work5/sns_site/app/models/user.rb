class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:name]  # ←ここでnameを指定

  validates :name, presence: true, uniqueness: true
end
