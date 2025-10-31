class Post < ApplicationRecord
  belongs_to :user

  # Ransackで検索可能な関連（association）を許可
  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

  # Ransackで検索可能なカラムを許可（必要に応じて追加）
  def self.ransackable_attributes(auth_object = nil)
    ["title", "content"]
  end
end
