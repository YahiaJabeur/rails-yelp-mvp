class Restaurant < ApplicationRecord
  # Associations
  has_many :reviews, dependent: :destroy

  # Validations
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end