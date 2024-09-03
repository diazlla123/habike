class Bike < ApplicationRecord
  belongs_to :user

  validates :model, :year, :description, :kilometers, :price, :category, presence: true
end
