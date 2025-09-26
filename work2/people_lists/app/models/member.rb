class Member < ApplicationRecord
  # 通常バリデーション
  validates :name, presence: true, uniqueness: true, length: { in: 1..20 }

  # カスタムメッセージ付きバリデーション
  validates :height, presence: { message: "身長を入力してください" }
  validates :weight, presence: { message: "体重を入力してください" }

  # 1以上であることをカスタムバリデーションでチェック
  validate :height_must_be_positive
  validate :weight_must_be_positive

  private

  def height_must_be_positive
    if height.present? && height <= 0
      errors.add(:height, "は1以上で入力してください")
    end
  end

  def weight_must_be_positive
    if weight.present? && weight <= 0
      errors.add(:weight, "は1以上で入力してください")
    end
  end
end
