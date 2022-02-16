class Review < ApplicationRecord
  belongs_to :restaurant
  # allows us to call review.restaurant and vice versa

  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end

# comparison
# numericality