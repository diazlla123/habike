class Bike < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :model, :year, :description, :kilometers, :price, :category, presence: true
  validates :year, :kilometers, :price, numericality: true
  validates :year, comparison: { less_than_or_equal_to: 2024 }
  validates :kilometers, length: { maximum: 6 }
end
