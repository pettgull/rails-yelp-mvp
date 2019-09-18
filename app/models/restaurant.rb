class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
  validates :address, presence: true
  validates_associated :reviews
end
