class Restaurant < ApplicationRecord
  # assoc
  has_many :reviews, dependent: :destroy

  # validates
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
